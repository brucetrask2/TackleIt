package TackleIt.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.descriptor.AbstractEditorBuilder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import de.slisson.mps.tables.runtime.cells.ChildsTracker;
import de.slisson.mps.tables.runtime.gridmodel.Grid;
import jetbrains.mps.openapi.editor.style.Style;
import de.slisson.mps.tables.runtime.style.ITableStyleFactory;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;
import de.slisson.mps.tables.runtime.cells.PartialTableEditor;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import de.slisson.mps.tables.runtime.gridmodel.EditorCellGridLeaf;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSmart;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SEmptyContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SChildSubstituteInfo;
import jetbrains.mps.openapi.editor.menus.transformation.SNodeLocation;
import de.slisson.mps.tables.runtime.gridmodel.HeaderGrid;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import de.slisson.mps.tables.runtime.gridmodel.Header;
import de.slisson.mps.tables.runtime.gridmodel.EditorCellHeader;
import de.slisson.mps.tables.runtime.gridmodel.StringHeaderReference;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import de.slisson.mps.tables.runtime.cells.TableEditor;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import de.slisson.mps.hacks.editor.EditorCacheHacks;
import de.slisson.mps.tables.runtime.cells.PartialTableExtractor;
import de.slisson.mps.tables.runtime.gridmodel.GridAdapter;
import de.slisson.mps.tables.runtime.gridmodel.IHeaderNodeInsertAction;
import de.slisson.mps.tables.runtime.gridmodel.ChildNodesInsertAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;
import de.slisson.mps.hacks.editor.SubstituteUtil;
import de.slisson.mps.tables.runtime.gridmodel.IGridElement;
import de.slisson.mps.tables.runtime.gridmodel.HeaderNodeInsertAction;
import de.slisson.mps.tables.runtime.gridmodel.EditorCellFactory;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.nodeEditor.cellMenu.DefaultSChildSubstituteInfo;
import de.slisson.mps.tables.runtime.gridmodel.IRowCreateHandler;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

/*package*/ class TroubleAndTackles_EditorBuilder_a extends AbstractEditorBuilder {
  @NotNull
  private SNode myNode;

  public TroubleAndTackles_EditorBuilder_a(@NotNull EditorContext context, @NotNull SNode node) {
    super(context);
    myNode = node;
  }

  @NotNull
  @Override
  public SNode getNode() {
    return myNode;
  }

  /*package*/ EditorCell createCell() {
    return createPartialTable_1();
  }

  private jetbrains.mps.nodeEditor.cells.EditorCell createPartialTable_0(final EditorContext editorContext, final SNode node) {
    ChildsTracker childsTracker = null;

    try {
      ChildsTracker.pushNewInstance();
      final Grid grid = createStaticHorizontal_by3lb7_a0(editorContext, node);
      final Style style = new ITableStyleFactory() {
        public Style createStyle(final int columnIndex, final int rowIndex) {
          Style style = new StyleImpl();
          final EditorCell editorCell = null;
          return style;
        }
      }.createStyle(0, 0);
      grid.setStyle(style);

      childsTracker = ChildsTracker.popInstance();
      if (childsTracker == null) {
        return new EditorCell_Error(editorContext, node, "not inside table");
      }
      PartialTableEditor editorCell = new PartialTableEditor(editorContext, node, grid);
      ChildsTracker.getInstance().registerChild(editorCell);
      editorCell.initChilds(childsTracker);

      editorCell.setCellId("PartialTable_by3lb7_a");
      editorCell.setBig(true);
      setCellContext(editorCell);
      editorCell.init();
      return editorCell;
    } catch (RuntimeException ex) {
      if (childsTracker == null) {
        ChildsTracker.popInstance();
      }
      throw ex;
    }
  }
  private EditorCell createPartialTable_1() {
    return createPartialTable_0(getEditorContext(), myNode);
  }
  public Grid createStaticHorizontal_by3lb7_a0(final EditorContext editorContext, final SNode node) {
    Grid grid = new Grid();

    List<Grid> children = new ArrayList<Grid>(3);
    if (true) {
      children.add(createTableCell_by3lb7_a0a(editorContext, node));
    }
    if (new Object() {
      public boolean condition() {
        SNode tackleIt = (SNode) SNodeOperations.getParent(node);
        return SPropertyOperations.getBoolean(tackleIt, PROPS.showTackles$ctxG);
      }
    }.condition()) {
      children.add(createStaticVertical_by3lb7_b0a(editorContext, node));
    }
    if (new Object() {
      public boolean condition() {
        SNode tackleIt = (SNode) SNodeOperations.getParent(node);
        return SPropertyOperations.getBoolean(tackleIt, PROPS.showProblemsOfComparableMagnitude$ctZI);
      }
    }.condition()) {
      children.add(createStaticVertical_by3lb7_c0a(editorContext, node));
    }
    int maxHeight = grid.getRowHeadersSizeY();
    for (Grid child : ListSequence.fromList(children)) {
      maxHeight = Math.max(maxHeight, child.getSizeY());
    }
    for (int x = 0; x < children.size(); x++) {
      if (maxHeight > 0) {
        children.get(x).setSpanY(maxHeight);
      }
      grid.setElement(x, 0, children.get(x));
    }
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    grid.setStyle(style);
    return grid;
  }
  public Grid createTableCell_by3lb7_a0a(final EditorContext editorContext, final SNode node) {

    EditorCell cell = createRefNode_0();
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);

    Grid grid;
    if (cell instanceof PartialTableEditor) {
      grid = ((PartialTableEditor) cell).getGrid().clone();
    } else {
      grid = new Grid();
      EditorCellGridLeaf leaf = new EditorCellGridLeaf(cell);
      leaf.setStyle(style);
      grid.setElement(0, 0, leaf);
    }

    return grid;
  }
  private EditorCell createRefNode_0() {
    SingleRoleCellProvider provider = new troubleSingleRoleHandler_by3lb7_a0a0(myNode, LINKS.trouble$PXMn, getEditorContext());
    return provider.createCell();
  }
  private static class troubleSingleRoleHandler_by3lb7_a0a0 extends SingleRoleCellProvider {
    @NotNull
    private SNode myNode;

    public troubleSingleRoleHandler_by3lb7_a0a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(containmentLink, context);
      myNode = ownerNode;
    }

    @Override
    @NotNull
    public SNode getNode() {
      return myNode;
    }

    protected EditorCell createChildCell(SNode child) {
      EditorCell editorCell = getUpdateSession().updateChildNodeCell(child);
      editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(getNode(), LINKS.trouble$PXMn, child));
      editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(getNode(), LINKS.trouble$PXMn, child));
      installCellInfo(child, editorCell, false);
      return editorCell;
    }



    private void installCellInfo(SNode child, EditorCell editorCell, boolean isEmpty) {
      if (editorCell.getSubstituteInfo() == null || editorCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
        editorCell.setSubstituteInfo((isEmpty ? new SEmptyContainmentSubstituteInfo(editorCell) : new SChildSubstituteInfo(editorCell)));
      }
      if (editorCell.getSRole() == null) {
        editorCell.setSRole(LINKS.trouble$PXMn);
      }
    }
    @Override
    protected EditorCell createEmptyCell() {
      getCellFactory().pushCellContext();
      getCellFactory().setNodeLocation(new SNodeLocation.FromParentAndLink(getNode(), LINKS.trouble$PXMn));
      try {
        EditorCell editorCell = super.createEmptyCell();
        editorCell.setCellId("empty_trouble");
        installCellInfo(null, editorCell, true);
        setCellContext(editorCell);
        return editorCell;
      } finally {
        getCellFactory().popCellContext();
      }
    }
    protected String getNoTargetText() {
      return "<no trouble>";
    }
  }
  public Grid createStaticVertical_by3lb7_b0a(final EditorContext editorContext, final SNode node) {
    if (!(new Object() {
      public boolean condition() {
        SNode tackleIt = (SNode) SNodeOperations.getParent(node);
        return SPropertyOperations.getBoolean(tackleIt, PROPS.showTackles$ctxG);
      }
    }.condition())) {
      return new Grid();
    }
    Grid grid = new Grid();
    grid.setColumnHeaders(0, 0, createStaticHeader_by3lb7_a1a0(editorContext, node));

    List<Grid> children = new ArrayList<Grid>(1);
    if (true) {
      children.add(createTableCell_by3lb7_a1a0(editorContext, node));
    }
    int maxWidth = grid.getColumnHeadersSizeX();
    for (Grid child : ListSequence.fromList(children)) {
      maxWidth = Math.max(maxWidth, child.getSizeX());
    }
    for (int y = 0; y < children.size(); y++) {
      if (maxWidth > 0) {
        children.get(y).setSpanX(maxWidth);
      }
      grid.setElement(0, y, children.get(y));
    }
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    grid.setStyle(style);
    return grid;
  }
  public HeaderGrid createStaticHeader_by3lb7_a1a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "Now, how am I going to tackle this?", false);
    Header header = new EditorCellHeader(new StringHeaderReference("Now, how am I going to tackle this?"), cell);
    header.setLabel("Now, how am I going to tackle this?");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }
  public Grid createTableCell_by3lb7_a1a0(final EditorContext editorContext, final SNode node) {

    EditorCell cell = createTable_1();
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);

    Grid grid;
    if (cell instanceof PartialTableEditor) {
      grid = ((PartialTableEditor) cell).getGrid().clone();
    } else {
      grid = new Grid();
      EditorCellGridLeaf leaf = new EditorCellGridLeaf(cell);
      leaf.setStyle(style);
      grid.setElement(0, 0, leaf);
    }

    return grid;
  }
  private EditorCell createTable_0(final EditorContext editorContext, final SNode node) {

    final Wrappers._T<TableEditor> editorCell = new Wrappers._T<TableEditor>(null);
    _FunctionTypes._void_P0_E0 creator = new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        EditorCacheHacks.noCaching(editorContext, new Runnable() {
          public void run() {
            try {

              ChildsTracker.pushNewInstance();
              PartialTableExtractor.pushNewInstance();
              Grid grid = new Grid();

              // column headers
              {
                List<HeaderGrid> headerGrids = new ArrayList<HeaderGrid>(0);
                grid.setColumnHeaders(headerGrids);
              }

              // row headers
              {
                List<HeaderGrid> headerGrids = new ArrayList<HeaderGrid>(0);
                grid.setRowHeaders(headerGrids);
              }
              final Grid childGrid = createStaticHorizontal_by3lb7_a0a1a0(editorContext, node);
              childGrid.setSpanX(Math.max(1, grid.getColumnHeadersSizeX()));
              childGrid.setSpanY(Math.max(1, grid.getRowHeadersSizeY()));
              grid.setElement(0, 0, childGrid);

              editorCell.value = new TableEditor(editorContext, node, grid);
              editorCell.value.setCellId("Table_by3lb7_a0b0a");


              editorCell.value.init();
            } finally {
              PartialTableExtractor.popInstance();
              ChildsTracker.popInstance(true);
            }
          }
        });
      }
    };

    creator.invoke();

    return editorCell.value;

  }
  private EditorCell createTable_1() {
    return createTable_0(getEditorContext(), myNode);
  }
  public Grid createStaticHorizontal_by3lb7_a0a1a0(final EditorContext editorContext, final SNode node) {
    Grid grid = new Grid();

    List<Grid> children = new ArrayList<Grid>(2);
    if (true) {
      children.add(createChildsVertical_by3lb7_a0a0b0a(editorContext, node));
    }
    if (true) {
      children.add(createChildsVertical_by3lb7_b0a0b0a(editorContext, node));
    }
    int maxHeight = grid.getRowHeadersSizeY();
    for (Grid child : ListSequence.fromList(children)) {
      maxHeight = Math.max(maxHeight, child.getSizeY());
    }
    for (int x = 0; x < children.size(); x++) {
      if (maxHeight > 0) {
        children.get(x).setSpanY(maxHeight);
      }
      grid.setElement(x, 0, children.get(x));
    }
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    grid.setStyle(style);
    return grid;
  }
  public Grid createChildsVertical_by3lb7_a0a0b0a(final EditorContext editorContext, final SNode node) {
    Grid grid = new Grid();
    GridAdapter gridAdapter = new GridAdapter(grid, editorContext, node);

    grid.setColumnHeaders(0, 0, createStaticHeader_by3lb7_a0a0a1a0(editorContext, node));

    final IHeaderNodeInsertAction insertAction = new ChildNodesInsertAction(node, SLinkOperations.findLinkDeclaration(LINKS.passOneTackles$6zdp)) {};

    try {
      getCellFactory().pushCellContext();
      getCellFactory().addCellContextHints();
      getCellFactory().removeCellContextHints();
      int y = 0;
      Iterable<SNode> elements = SLinkOperations.getChildren(node, LINKS.passOneTackles$6zdp);
      for (SNode child : Sequence.fromIterable(elements)) {
        final int yFinal = y;
        EditorCell cell = editorContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(child);
        ChildsTracker.getInstance().registerChild(cell);
        SubstituteInfo substituteInfo = SubstituteUtil.forChild(editorContext, node, (y < ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.passOneTackles$6zdp)).count() ? ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.passOneTackles$6zdp)).getElement(y) : null), LINKS.passOneTackles$6zdp);
        cell.setSubstituteInfo(substituteInfo);

        IGridElement gridElement = PartialTableExtractor.getGridElementFromEditorCell(cell, grid);

        gridElement.setRightRowCreateHandler(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child) + 1, insertAction));
        gridElement.setLeftRowCreateHandler(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child), insertAction));
        gridElement.setSpanX(Math.max(1, grid.getSizeX()));

        grid.setElement(0, y, gridElement);


        gridElement.setStyle(new ITableStyleFactory() {
          public Style createStyle(final int columnIndex, final int rowIndex) {
            Style style = new StyleImpl();
            final EditorCell editorCell = null;
            return style;
          }
        }.createStyle(0, y));

        gridElement.setInsertBeforeAction(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child), insertAction), -1);
        gridElement.setInsertAction(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child) + 1, insertAction), -1);

        y++;
      }
    } finally {
      getCellFactory().popCellContext();
    }

    if (ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.passOneTackles$6zdp)).isEmpty()) {
      EditorCell placeholder = new EditorCellFactory(editorContext, node, grid).createPlaceholderConstant("<no passOneTackles>");
      IGridElement element = PartialTableExtractor.getGridElementFromEditorCell(placeholder, grid);
      element.setSpanX(Math.max(element.getSpanX(), grid.getColumnHeadersSizeX()));
      element.setSpanY(Math.max(element.getSpanY(), grid.getRowHeadersSizeY()));
      grid.setElement(0, 0, element);

      placeholder.setAction(CellActionType.INSERT, new AbstractCellAction() {
        public void execute(EditorContext p0) {
          insertAction.insertNew(0);
        }
      });
      placeholder.setAction(CellActionType.INSERT_BEFORE, placeholder.getAction(CellActionType.INSERT));
      SubstituteInfo substituteInfo = new DefaultSChildSubstituteInfo(node, null, LINKS.passOneTackles$6zdp, editorContext);
      placeholder.setSubstituteInfo(substituteInfo);
      IRowCreateHandler rowCreateHandler = new IRowCreateHandler() {
        public void create() {
          insertAction.insertNew(0);
        }
      };

      grid.setLeftRowCreateHandler(rowCreateHandler);
      grid.setRightRowCreateHandler(rowCreateHandler);
    }

    grid.flattenOneLevel();
    return grid;
  }
  public HeaderGrid createStaticHeader_by3lb7_a0a0a1a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "pass one", false);
    Header header = new EditorCellHeader(new StringHeaderReference("pass one"), cell);
    header.setLabel("pass one");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }
  public Grid createChildsVertical_by3lb7_b0a0b0a(final EditorContext editorContext, final SNode node) {
    Grid grid = new Grid();
    GridAdapter gridAdapter = new GridAdapter(grid, editorContext, node);

    grid.setColumnHeaders(0, 0, createStaticHeader_by3lb7_a1a0a1a0(editorContext, node));

    final IHeaderNodeInsertAction insertAction = new ChildNodesInsertAction(node, SLinkOperations.findLinkDeclaration(LINKS.passTwoTackles$rltb)) {};

    try {
      getCellFactory().pushCellContext();
      getCellFactory().addCellContextHints();
      getCellFactory().removeCellContextHints();
      int y = 0;
      Iterable<SNode> elements = SLinkOperations.getChildren(node, LINKS.passTwoTackles$rltb);
      for (SNode child : Sequence.fromIterable(elements)) {
        final int yFinal = y;
        EditorCell cell = editorContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(child);
        ChildsTracker.getInstance().registerChild(cell);
        SubstituteInfo substituteInfo = SubstituteUtil.forChild(editorContext, node, (y < ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.passTwoTackles$rltb)).count() ? ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.passTwoTackles$rltb)).getElement(y) : null), LINKS.passTwoTackles$rltb);
        cell.setSubstituteInfo(substituteInfo);

        IGridElement gridElement = PartialTableExtractor.getGridElementFromEditorCell(cell, grid);

        gridElement.setRightRowCreateHandler(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child) + 1, insertAction));
        gridElement.setLeftRowCreateHandler(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child), insertAction));
        gridElement.setSpanX(Math.max(1, grid.getSizeX()));

        grid.setElement(0, y, gridElement);


        gridElement.setStyle(new ITableStyleFactory() {
          public Style createStyle(final int columnIndex, final int rowIndex) {
            Style style = new StyleImpl();
            final EditorCell editorCell = null;
            return style;
          }
        }.createStyle(0, y));

        gridElement.setInsertBeforeAction(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child), insertAction), -1);
        gridElement.setInsertAction(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child) + 1, insertAction), -1);

        y++;
      }
    } finally {
      getCellFactory().popCellContext();
    }

    if (ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.passTwoTackles$rltb)).isEmpty()) {
      EditorCell placeholder = new EditorCellFactory(editorContext, node, grid).createPlaceholderConstant("<no passTwoTackles>");
      IGridElement element = PartialTableExtractor.getGridElementFromEditorCell(placeholder, grid);
      element.setSpanX(Math.max(element.getSpanX(), grid.getColumnHeadersSizeX()));
      element.setSpanY(Math.max(element.getSpanY(), grid.getRowHeadersSizeY()));
      grid.setElement(0, 0, element);

      placeholder.setAction(CellActionType.INSERT, new AbstractCellAction() {
        public void execute(EditorContext p0) {
          insertAction.insertNew(0);
        }
      });
      placeholder.setAction(CellActionType.INSERT_BEFORE, placeholder.getAction(CellActionType.INSERT));
      SubstituteInfo substituteInfo = new DefaultSChildSubstituteInfo(node, null, LINKS.passTwoTackles$rltb, editorContext);
      placeholder.setSubstituteInfo(substituteInfo);
      IRowCreateHandler rowCreateHandler = new IRowCreateHandler() {
        public void create() {
          insertAction.insertNew(0);
        }
      };

      grid.setLeftRowCreateHandler(rowCreateHandler);
      grid.setRightRowCreateHandler(rowCreateHandler);
    }

    grid.flattenOneLevel();
    return grid;
  }
  public HeaderGrid createStaticHeader_by3lb7_a1a0a1a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "pass two", false);
    Header header = new EditorCellHeader(new StringHeaderReference("pass two"), cell);
    header.setLabel("pass two");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }
  public Grid createStaticVertical_by3lb7_c0a(final EditorContext editorContext, final SNode node) {
    if (!(new Object() {
      public boolean condition() {
        SNode tackleIt = (SNode) SNodeOperations.getParent(node);
        return SPropertyOperations.getBoolean(tackleIt, PROPS.showProblemsOfComparableMagnitude$ctZI);
      }
    }.condition())) {
      return new Grid();
    }
    Grid grid = new Grid();
    grid.setColumnHeaders(0, 0, createStaticHeader_by3lb7_a2a0(editorContext, node));

    List<Grid> children = new ArrayList<Grid>(1);
    if (true) {
      children.add(createTableCell_by3lb7_a2a0(editorContext, node));
    }
    int maxWidth = grid.getColumnHeadersSizeX();
    for (Grid child : ListSequence.fromList(children)) {
      maxWidth = Math.max(maxWidth, child.getSizeX());
    }
    for (int y = 0; y < children.size(); y++) {
      if (maxWidth > 0) {
        children.get(y).setSpanX(maxWidth);
      }
      grid.setElement(0, y, children.get(y));
    }
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    grid.setStyle(style);
    return grid;
  }
  public HeaderGrid createStaticHeader_by3lb7_a2a0(final EditorContext editorContext, final SNode snode) {
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);
    final EditorCell_Constant cell = new EditorCell_Constant(editorContext, snode, "Problems of comparable magnitude?", false);
    Header header = new EditorCellHeader(new StringHeaderReference("Problems of comparable magnitude?"), cell);
    header.setLabel("Problems of comparable magnitude?");
    header.setStyle(style);
    HeaderGrid grid = new HeaderGrid();
    grid.setElement(0, 0, header);
    return grid;
  }
  public Grid createTableCell_by3lb7_a2a0(final EditorContext editorContext, final SNode node) {

    EditorCell cell = createTable_3();
    final Style style = new ITableStyleFactory() {
      public Style createStyle(final int columnIndex, final int rowIndex) {
        Style style = new StyleImpl();
        final EditorCell editorCell = null;
        return style;
      }
    }.createStyle(0, 0);

    Grid grid;
    if (cell instanceof PartialTableEditor) {
      grid = ((PartialTableEditor) cell).getGrid().clone();
    } else {
      grid = new Grid();
      EditorCellGridLeaf leaf = new EditorCellGridLeaf(cell);
      leaf.setStyle(style);
      grid.setElement(0, 0, leaf);
    }

    return grid;
  }
  private EditorCell createTable_2(final EditorContext editorContext, final SNode node) {

    final Wrappers._T<TableEditor> editorCell = new Wrappers._T<TableEditor>(null);
    _FunctionTypes._void_P0_E0 creator = new _FunctionTypes._void_P0_E0() {
      public void invoke() {
        EditorCacheHacks.noCaching(editorContext, new Runnable() {
          public void run() {
            try {

              ChildsTracker.pushNewInstance();
              PartialTableExtractor.pushNewInstance();
              Grid grid = new Grid();

              // column headers
              {
                List<HeaderGrid> headerGrids = new ArrayList<HeaderGrid>(0);
                grid.setColumnHeaders(headerGrids);
              }

              // row headers
              {
                List<HeaderGrid> headerGrids = new ArrayList<HeaderGrid>(0);
                grid.setRowHeaders(headerGrids);
              }
              final Grid childGrid = createChildsVertical_by3lb7_a0a2a0(editorContext, node);
              childGrid.setSpanX(Math.max(1, grid.getColumnHeadersSizeX()));
              childGrid.setSpanY(Math.max(1, grid.getRowHeadersSizeY()));
              grid.setElement(0, 0, childGrid);

              editorCell.value = new TableEditor(editorContext, node, grid);
              editorCell.value.setCellId("Table_by3lb7_a0c0a");


              editorCell.value.init();
            } finally {
              PartialTableExtractor.popInstance();
              ChildsTracker.popInstance(true);
            }
          }
        });
      }
    };

    creator.invoke();

    return editorCell.value;

  }
  private EditorCell createTable_3() {
    return createTable_2(getEditorContext(), myNode);
  }
  public Grid createChildsVertical_by3lb7_a0a2a0(final EditorContext editorContext, final SNode node) {
    Grid grid = new Grid();
    GridAdapter gridAdapter = new GridAdapter(grid, editorContext, node);


    final IHeaderNodeInsertAction insertAction = new ChildNodesInsertAction(node, SLinkOperations.findLinkDeclaration(LINKS.problemsOfComparableMagnitude$yn4E)) {};

    try {
      getCellFactory().pushCellContext();
      getCellFactory().addCellContextHints();
      getCellFactory().removeCellContextHints();
      int y = 0;
      Iterable<SNode> elements = SLinkOperations.getChildren(node, LINKS.problemsOfComparableMagnitude$yn4E);
      for (SNode child : Sequence.fromIterable(elements)) {
        final int yFinal = y;
        EditorCell cell = editorContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(child);
        ChildsTracker.getInstance().registerChild(cell);
        SubstituteInfo substituteInfo = SubstituteUtil.forChild(editorContext, node, (y < ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.problemsOfComparableMagnitude$yn4E)).count() ? ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.problemsOfComparableMagnitude$yn4E)).getElement(y) : null), LINKS.problemsOfComparableMagnitude$yn4E);
        cell.setSubstituteInfo(substituteInfo);

        IGridElement gridElement = PartialTableExtractor.getGridElementFromEditorCell(cell, grid);

        gridElement.setRightRowCreateHandler(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child) + 1, insertAction));
        gridElement.setLeftRowCreateHandler(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child), insertAction));
        gridElement.setSpanX(Math.max(1, grid.getSizeX()));

        grid.setElement(0, y, gridElement);


        gridElement.setStyle(new ITableStyleFactory() {
          public Style createStyle(final int columnIndex, final int rowIndex) {
            Style style = new StyleImpl();
            final EditorCell editorCell = null;
            return style;
          }
        }.createStyle(0, y));

        gridElement.setInsertBeforeAction(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child), insertAction), -1);
        gridElement.setInsertAction(new HeaderNodeInsertAction(SNodeOperations.getIndexInParent(child) + 1, insertAction), -1);

        y++;
      }
    } finally {
      getCellFactory().popCellContext();
    }

    if (ListSequence.fromList(SLinkOperations.getChildren(node, LINKS.problemsOfComparableMagnitude$yn4E)).isEmpty()) {
      EditorCell placeholder = new EditorCellFactory(editorContext, node, grid).createPlaceholderConstant("<no problemsOfComparableMagnitude>");
      IGridElement element = PartialTableExtractor.getGridElementFromEditorCell(placeholder, grid);
      element.setSpanX(Math.max(element.getSpanX(), grid.getColumnHeadersSizeX()));
      element.setSpanY(Math.max(element.getSpanY(), grid.getRowHeadersSizeY()));
      grid.setElement(0, 0, element);

      placeholder.setAction(CellActionType.INSERT, new AbstractCellAction() {
        public void execute(EditorContext p0) {
          insertAction.insertNew(0);
        }
      });
      placeholder.setAction(CellActionType.INSERT_BEFORE, placeholder.getAction(CellActionType.INSERT));
      SubstituteInfo substituteInfo = new DefaultSChildSubstituteInfo(node, null, LINKS.problemsOfComparableMagnitude$yn4E, editorContext);
      placeholder.setSubstituteInfo(substituteInfo);
      IRowCreateHandler rowCreateHandler = new IRowCreateHandler() {
        public void create() {
          insertAction.insertNew(0);
        }
      };

      grid.setLeftRowCreateHandler(rowCreateHandler);
      grid.setRightRowCreateHandler(rowCreateHandler);
    }

    grid.flattenOneLevel();
    return grid;
  }

  private static final class PROPS {
    /*package*/ static final SProperty showTackles$ctxG = MetaAdapterFactory.getProperty(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL, 0x5b66c341f9f91ee9L, 0x5b66c341f9fc7ee6L, "showTackles");
    /*package*/ static final SProperty showProblemsOfComparableMagnitude$ctZI = MetaAdapterFactory.getProperty(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL, 0x5b66c341f9f91ee9L, 0x5b66c341f9fc7ee8L, "showProblemsOfComparableMagnitude");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink trouble$PXMn = MetaAdapterFactory.getContainmentLink(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL, 0x5b66c341f9f91eeaL, 0x5b66c341f9f95c76L, "trouble");
    /*package*/ static final SContainmentLink passOneTackles$6zdp = MetaAdapterFactory.getContainmentLink(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL, 0x5b66c341f9f91eeaL, 0x5b66c341f9f979fdL, "passOneTackles");
    /*package*/ static final SContainmentLink passTwoTackles$rltb = MetaAdapterFactory.getContainmentLink(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL, 0x5b66c341f9f91eeaL, 0x5b66c341fa007cbdL, "passTwoTackles");
    /*package*/ static final SContainmentLink problemsOfComparableMagnitude$yn4E = MetaAdapterFactory.getContainmentLink(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL, 0x5b66c341f9f91eeaL, 0x5b66c341f9fba85aL, "problemsOfComparableMagnitude");
  }
}
