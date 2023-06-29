package TackleIt.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int ProblemOfComparableMagnitude = 0;
  public static final int Tackle = 1;
  public static final int TackleIt = 2;
  public static final int TacklePass = 3;
  public static final int Trouble = 4;
  public static final int TroubleAndTackles = 5;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0x38ae19b1540f43ecL, 0x83787a6f9a38ea5eL);
    builder.put(0x5b66c341f9fba857L, ProblemOfComparableMagnitude);
    builder.put(0x5b66c341f9f93f01L, Tackle);
    builder.put(0x5b66c341f9f91ee9L, TackleIt);
    builder.put(0x5b66c341fa01a5acL, TacklePass);
    builder.put(0x5b66c341f9f93f00L, Trouble);
    builder.put(0x5b66c341f9f91eeaL, TroubleAndTackles);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}