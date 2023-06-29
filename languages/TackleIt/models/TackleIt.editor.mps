<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8de7e094-3d83-4538-a7fd-344fafb642fe(TackleIt.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="sp1v" ref="r:c3b08c25-3a65-47dd-9386-4d105e05313b(TackleIt.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
    </language>
    <language id="7e450f4e-1ac3-41ef-a851-4598161bdb94" name="de.slisson.mps.tables">
      <concept id="1397920687865593407" name="de.slisson.mps.tables.structure.PartialTable" flags="ng" index="2r0Tta">
        <child id="1397920687865593523" name="cells" index="2r0Tv6" />
      </concept>
      <concept id="1397920687866011705" name="de.slisson.mps.tables.structure.QueryParameter_Node" flags="ng" index="2r2w_c" />
      <concept id="1397920687864997170" name="de.slisson.mps.tables.structure.TableNodeCollection" flags="ng" index="2reCL7">
        <child id="1397920687864997171" name="childTableNodes" index="2reCL6" />
      </concept>
      <concept id="1397920687864997153" name="de.slisson.mps.tables.structure.StaticHorizontal" flags="ng" index="2reCLk" />
      <concept id="1397920687864997163" name="de.slisson.mps.tables.structure.StaticVertical" flags="ng" index="2reCLu">
        <child id="5220503293661233944" name="columnHeader" index="177rse" />
      </concept>
      <concept id="1397920687864997143" name="de.slisson.mps.tables.structure.TableCell" flags="ng" index="2reCLy">
        <child id="1397920687865064647" name="editorCell" index="2reSmM" />
      </concept>
      <concept id="1397920687865064415" name="de.slisson.mps.tables.structure.ChildsVertical" flags="ng" index="2reSaE" />
      <concept id="1397920687865064509" name="de.slisson.mps.tables.structure.ChildCollection" flags="ng" index="2reSl8">
        <reference id="1397920687864997201" name="linkDeclaration" index="2reCK$" />
        <child id="2199447184406843652" name="columnHeaders" index="2YiT2b" />
      </concept>
      <concept id="1397920687864865353" name="de.slisson.mps.tables.structure.ITableNode" flags="ng" index="2rf8GW">
        <child id="8843513109888016181" name="condition" index="3NQet$" />
      </concept>
      <concept id="1397920687864864270" name="de.slisson.mps.tables.structure.StaticHeader" flags="ng" index="2rfbtV">
        <property id="1397920687864864274" name="text" index="2rfbtB" />
      </concept>
      <concept id="1397920687864683158" name="de.slisson.mps.tables.structure.Table" flags="ng" index="2rfBfz">
        <child id="1397920687864865354" name="cells" index="2rf8GZ" />
      </concept>
      <concept id="8843513109888016587" name="de.slisson.mps.tables.structure.TableNodeCondition" flags="ig" index="3NQdyq" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="5HAKO7TYi9d">
    <ref role="1XX52x" to="sp1v:5HAKO7TYhVD" resolve="TackleIt" />
    <node concept="3EZMnI" id="5HAKO7TZ7VH" role="2wV5jI">
      <node concept="3EZMnI" id="1N98qX6CUZf" role="3EZMnx">
        <node concept="VPM3Z" id="1N98qX6CUZh" role="3F10Kt" />
        <node concept="3F0ifn" id="1N98qX6CUZj" role="3EZMnx">
          <property role="3F0ifm" value="TackleIt - " />
        </node>
        <node concept="3F0A7n" id="1N98qX6D4Za" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="1N98qX6CUZk" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5HAKO7TZ7W4" role="3EZMnx">
        <node concept="VPM3Z" id="5HAKO7TZ7W6" role="3F10Kt" />
        <node concept="3F0ifn" id="5HAKO7TZ7W8" role="3EZMnx">
          <property role="3F0ifm" value="show tackles: " />
        </node>
        <node concept="3F0A7n" id="5HAKO7TZ7Wo" role="3EZMnx">
          <ref role="1NtTu8" to="sp1v:5HAKO7TZ7VA" resolve="showTackles" />
        </node>
        <node concept="2iRfu4" id="5HAKO7TZ7W9" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5HAKO7TZ7WE" role="3EZMnx">
        <node concept="VPM3Z" id="5HAKO7TZ7WG" role="3F10Kt" />
        <node concept="3F0ifn" id="5HAKO7TZ7X0" role="3EZMnx">
          <property role="3F0ifm" value="show problems of comparable magnitude" />
        </node>
        <node concept="3F0A7n" id="5HAKO7TZ7X6" role="3EZMnx">
          <ref role="1NtTu8" to="sp1v:5HAKO7TZ7VC" resolve="showProblemsOfComparableMagnitude" />
        </node>
        <node concept="2iRfu4" id="5HAKO7TZ7WJ" role="2iSdaV" />
      </node>
      <node concept="2rfBfz" id="5HAKO7TYi9f" role="3EZMnx">
        <node concept="2reSaE" id="5HAKO7TYi9k" role="2rf8GZ">
          <ref role="2reCK$" to="sp1v:5HAKO7TYhVF" resolve="troubleAndTackles" />
        </node>
      </node>
      <node concept="3F0ifn" id="5HAKO7TZ7VJ" role="3EZMnx" />
      <node concept="2iRkQZ" id="5HAKO7TZ7VK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5HAKO7TYput">
    <ref role="1XX52x" to="sp1v:5HAKO7TYhVE" resolve="TroubleAndTackles" />
    <node concept="2r0Tta" id="5HAKO7TYpuy" role="2wV5jI">
      <node concept="2reCLk" id="5HAKO7TYpu_" role="2r0Tv6">
        <node concept="2reCLy" id="5HAKO7TYpuB" role="2reCL6">
          <node concept="3F1sOY" id="5HAKO7TYpuF" role="2reSmM">
            <ref role="1NtTu8" to="sp1v:5HAKO7TYlLQ" resolve="trouble" />
          </node>
        </node>
        <node concept="2reCLu" id="5HAKO7TZV31" role="2reCL6">
          <node concept="2rfbtV" id="5HAKO7TZiEw" role="177rse">
            <property role="2rfbtB" value="Now, how am I going to tackle this?" />
          </node>
          <node concept="2reCLy" id="5HAKO7TZVck" role="2reCL6">
            <node concept="2rfBfz" id="5HAKO7TZVco" role="2reSmM">
              <node concept="2reCLk" id="5HAKO7TZVct" role="2rf8GZ">
                <node concept="2reSaE" id="5HAKO7TZVcw" role="2reCL6">
                  <ref role="2reCK$" to="sp1v:5HAKO7TYnBX" resolve="passOneTackles" />
                  <node concept="2rfbtV" id="5HAKO7U00Tt" role="2YiT2b">
                    <property role="2rfbtB" value="pass one" />
                  </node>
                </node>
                <node concept="2reSaE" id="5HAKO7U07MR" role="2reCL6">
                  <ref role="2reCK$" to="sp1v:5HAKO7U07MX" resolve="passTwoTackles" />
                  <node concept="2rfbtV" id="5HAKO7U07MS" role="2YiT2b">
                    <property role="2rfbtB" value="pass two" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3NQdyq" id="5HAKO7U1jJ_" role="3NQet$">
            <node concept="3clFbS" id="5HAKO7U1jJA" role="2VODD2">
              <node concept="3cpWs8" id="5HAKO7U1jNv" role="3cqZAp">
                <node concept="3cpWsn" id="5HAKO7U1jNw" role="3cpWs9">
                  <property role="TrG5h" value="tackleIt" />
                  <node concept="3Tqbb2" id="5HAKO7U1jNx" role="1tU5fm">
                    <ref role="ehGHo" to="sp1v:5HAKO7TYhVD" resolve="TackleIt" />
                  </node>
                  <node concept="10QFUN" id="5HAKO7U1jNy" role="33vP2m">
                    <node concept="3Tqbb2" id="5HAKO7U1jNz" role="10QFUM">
                      <ref role="ehGHo" to="sp1v:5HAKO7TYhVD" resolve="TackleIt" />
                    </node>
                    <node concept="2OqwBi" id="5HAKO7U1jN$" role="10QFUP">
                      <node concept="2r2w_c" id="5HAKO7U1jN_" role="2Oq$k0" />
                      <node concept="1mfA1w" id="5HAKO7U1jNA" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5HAKO7U1jNB" role="3cqZAp">
                <node concept="2OqwBi" id="5HAKO7U1jNC" role="3cqZAk">
                  <node concept="37vLTw" id="5HAKO7U1jND" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HAKO7U1jNw" resolve="tackleIt" />
                  </node>
                  <node concept="3TrcHB" id="5HAKO7U1jNE" role="2OqNvi">
                    <ref role="3TsBF5" to="sp1v:5HAKO7TZ7VA" resolve="showTackles" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2reCLu" id="5HAKO7U1bta" role="2reCL6">
          <node concept="2reCLy" id="5HAKO7U1bts" role="2reCL6">
            <node concept="2rfBfz" id="5HAKO7U1bty" role="2reSmM">
              <node concept="2reSaE" id="5HAKO7TYUxz" role="2rf8GZ">
                <ref role="2reCK$" to="sp1v:5HAKO7TYUxq" resolve="problemsOfComparableMagnitude" />
              </node>
            </node>
          </node>
          <node concept="2rfbtV" id="5HAKO7U1bto" role="177rse">
            <property role="2rfbtB" value="Problems of comparable magnitude?" />
          </node>
          <node concept="3NQdyq" id="5HAKO7U1j_Y" role="3NQet$">
            <node concept="3clFbS" id="5HAKO7U1j_Z" role="2VODD2">
              <node concept="3cpWs8" id="5HAKO7TZJte" role="3cqZAp">
                <node concept="3cpWsn" id="5HAKO7TZJtf" role="3cpWs9">
                  <property role="TrG5h" value="tackleIt" />
                  <node concept="3Tqbb2" id="5HAKO7TZJtg" role="1tU5fm">
                    <ref role="ehGHo" to="sp1v:5HAKO7TYhVD" resolve="TackleIt" />
                  </node>
                  <node concept="10QFUN" id="5HAKO7TZJth" role="33vP2m">
                    <node concept="3Tqbb2" id="5HAKO7TZJti" role="10QFUM">
                      <ref role="ehGHo" to="sp1v:5HAKO7TYhVD" resolve="TackleIt" />
                    </node>
                    <node concept="2OqwBi" id="5HAKO7TZJtj" role="10QFUP">
                      <node concept="2r2w_c" id="5HAKO7TZJtk" role="2Oq$k0" />
                      <node concept="1mfA1w" id="5HAKO7TZJtl" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5HAKO7TZJtm" role="3cqZAp">
                <node concept="2OqwBi" id="5HAKO7TZJtn" role="3cqZAk">
                  <node concept="37vLTw" id="5HAKO7TZJto" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HAKO7TZJtf" resolve="tackleIt" />
                  </node>
                  <node concept="3TrcHB" id="5HAKO7TZJtp" role="2OqNvi">
                    <ref role="3TsBF5" to="sp1v:5HAKO7TZ7VC" resolve="showProblemsOfComparableMagnitude" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5HAKO7TYuMZ">
    <ref role="1XX52x" to="sp1v:5HAKO7TYjW0" resolve="Trouble" />
    <node concept="2r0Tta" id="5HAKO7TZy8x" role="2wV5jI">
      <node concept="2reCLu" id="5HAKO7TZy8$" role="2r0Tv6">
        <node concept="2reCLy" id="5HAKO7TZy8A" role="2reCL6">
          <node concept="3F0A7n" id="5HAKO7TZy8E" role="2reSmM">
            <ref role="1NtTu8" to="sp1v:5HAKO7TYjW8" resolve="description" />
          </node>
        </node>
        <node concept="2rfbtV" id="5HAKO7TZy8H" role="177rse">
          <property role="2rfbtB" value="Let's see, what are my troubles/difficulties?" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5HAKO7TYuNb">
    <ref role="1XX52x" to="sp1v:5HAKO7TYjW1" resolve="Tackle" />
    <node concept="2r0Tta" id="5HAKO7U0BFA" role="2wV5jI">
      <node concept="2reCLy" id="5HAKO7U0BFD" role="2r0Tv6">
        <node concept="3F0A7n" id="5HAKO7U0BFH" role="2reSmM">
          <ref role="1NtTu8" to="sp1v:5HAKO7TYjW2" resolve="description" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5HAKO7TYYt9">
    <ref role="1XX52x" to="sp1v:5HAKO7TYUxn" resolve="ProblemOfComparableMagnitude" />
    <node concept="3F0A7n" id="5HAKO7TYYtb" role="2wV5jI">
      <ref role="1NtTu8" to="sp1v:5HAKO7TYUxo" resolve="description" />
    </node>
  </node>
  <node concept="24kQdi" id="5HAKO7U0qmT">
    <ref role="1XX52x" to="sp1v:5HAKO7U0qmG" resolve="TacklePass" />
    <node concept="2r0Tta" id="5HAKO7U0qn7" role="2wV5jI">
      <node concept="2reCLk" id="5HAKO7U0qwd" role="2r0Tv6">
        <node concept="2reSaE" id="5HAKO7U0qwf" role="2reCL6">
          <ref role="2reCK$" to="sp1v:5HAKO7U0qmH" resolve="passOne" />
          <node concept="2rfbtV" id="5HAKO7U0qwg" role="2YiT2b">
            <property role="2rfbtB" value="pass one" />
          </node>
        </node>
        <node concept="2reSaE" id="5HAKO7U0qwh" role="2reCL6">
          <ref role="2reCK$" to="sp1v:5HAKO7U0qmJ" resolve="passTwo" />
          <node concept="2rfbtV" id="5HAKO7U0qwi" role="2YiT2b">
            <property role="2rfbtB" value="pass two" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

