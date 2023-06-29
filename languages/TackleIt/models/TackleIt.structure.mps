<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c3b08c25-3a65-47dd-9386-4d105e05313b(TackleIt.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5HAKO7TYhVD">
    <property role="EcuMT" value="6586166193210072809" />
    <property role="TrG5h" value="TackleIt" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5HAKO7TYhVF" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210072811" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="troubleAndTackles" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5HAKO7TYhVE" resolve="TroubleAndTackles" />
    </node>
    <node concept="1TJgyi" id="5HAKO7TZ7VA" role="1TKVEl">
      <property role="IQ2nx" value="6586166193210293990" />
      <property role="TrG5h" value="showTackles" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="5HAKO7TZ7VC" role="1TKVEl">
      <property role="IQ2nx" value="6586166193210293992" />
      <property role="TrG5h" value="showProblemsOfComparableMagnitude" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="1N98qX6CDGV" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5HAKO7TYhVE">
    <property role="EcuMT" value="6586166193210072810" />
    <property role="TrG5h" value="TroubleAndTackles" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5HAKO7TYlLQ" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210088566" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="trouble" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="5HAKO7TYjW0" resolve="Trouble" />
    </node>
    <node concept="1TJgyj" id="5HAKO7TYnBX" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210096125" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="passOneTackles" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5HAKO7TYjW1" resolve="Tackle" />
    </node>
    <node concept="1TJgyj" id="5HAKO7U07MX" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210555581" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="passTwoTackles" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5HAKO7TYjW1" resolve="Tackle" />
    </node>
    <node concept="1TJgyj" id="5HAKO7TYUxq" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210239066" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="problemsOfComparableMagnitude" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5HAKO7TYUxn" resolve="ProblemOfComparableMagnitude" />
    </node>
  </node>
  <node concept="1TIwiD" id="5HAKO7TYjW0">
    <property role="EcuMT" value="6586166193210081024" />
    <property role="TrG5h" value="Trouble" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5HAKO7TYjW8" role="1TKVEl">
      <property role="IQ2nx" value="6586166193210081032" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5HAKO7TYjW1">
    <property role="EcuMT" value="6586166193210081025" />
    <property role="TrG5h" value="Tackle" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5HAKO7TYjW2" role="1TKVEl">
      <property role="IQ2nx" value="6586166193210081026" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5HAKO7TYUxn">
    <property role="EcuMT" value="6586166193210239063" />
    <property role="TrG5h" value="ProblemOfComparableMagnitude" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5HAKO7TYUxo" role="1TKVEl">
      <property role="IQ2nx" value="6586166193210239064" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5HAKO7U0qmG">
    <property role="EcuMT" value="6586166193210631596" />
    <property role="TrG5h" value="TacklePass" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5HAKO7U0qmH" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210631597" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="passOne" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5HAKO7TYjW1" resolve="Tackle" />
    </node>
    <node concept="1TJgyj" id="5HAKO7U0qmJ" role="1TKVEi">
      <property role="IQ2ns" value="6586166193210631599" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="passTwo" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5HAKO7TYjW1" resolve="Tackle" />
    </node>
  </node>
</model>

