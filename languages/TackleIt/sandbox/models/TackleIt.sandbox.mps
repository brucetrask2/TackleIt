<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0f1a48a8-8232-4426-b55d-decf313415b2(TackleIt.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="38ae19b1-540f-43ec-8378-7a6f9a38ea5e" name="TackleIt" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="38ae19b1-540f-43ec-8378-7a6f9a38ea5e" name="TackleIt">
      <concept id="6586166193210239063" name="TackleIt.structure.ProblemOfComparableMagnitude" flags="ng" index="2yBmGm">
        <property id="6586166193210239064" name="description" index="2yBmGp" />
      </concept>
      <concept id="6586166193210072809" name="TackleIt.structure.TackleIt" flags="ng" index="2yBXQC">
        <property id="6586166193210293990" name="showTackles" index="2yAFQB" />
        <property id="6586166193210293992" name="showProblemsOfComparableMagnitude" index="2yAFQD" />
        <child id="6586166193210072811" name="troubleAndTackles" index="2yBXQE" />
      </concept>
      <concept id="6586166193210072810" name="TackleIt.structure.TroubleAndTackles" flags="ng" index="2yBXQF">
        <child id="6586166193210555581" name="passTwoTackles" index="2xpFZW" />
        <child id="6586166193210239066" name="problemsOfComparableMagnitude" index="2yBmGr" />
        <child id="6586166193210088566" name="trouble" index="2yBTWR" />
        <child id="6586166193210096125" name="passOneTackles" index="2yBVEW" />
      </concept>
      <concept id="6586166193210081025" name="TackleIt.structure.Tackle" flags="ng" index="2yBZL0">
        <property id="6586166193210081026" name="description" index="2yBZL3" />
      </concept>
      <concept id="6586166193210081024" name="TackleIt.structure.Trouble" flags="ng" index="2yBZL1">
        <property id="6586166193210081032" name="description" index="2yBZL9" />
      </concept>
    </language>
  </registry>
  <node concept="2yBXQC" id="5HAKO7TYuMN">
    <property role="2yAFQD" value="true" />
    <property role="2yAFQB" value="true" />
    <node concept="2yBXQF" id="5HAKO7U1zxN" role="2yBXQE">
      <node concept="2yBmGm" id="5HAKO7U1zyq" role="2yBmGr">
        <property role="2yBmGp" value="fsalkfsfj" />
      </node>
      <node concept="2yBZL0" id="5HAKO7U1zyc" role="2xpFZW" />
      <node concept="2yBZL0" id="5HAKO7U1zxR" role="2yBVEW">
        <property role="2yBZL3" value="ffdskafafsa" />
      </node>
      <node concept="2yBZL1" id="5HAKO7U1zxO" role="2yBTWR">
        <property role="2yBZL9" value="fkfsadljfslf" />
      </node>
      <node concept="2yBZL0" id="5HAKO7U1zy0" role="2yBVEW">
        <property role="2yBZL3" value="fsdfa" />
      </node>
      <node concept="2yBZL0" id="5HAKO7U1zy3" role="2yBVEW" />
      <node concept="2yBZL0" id="5HAKO7U1zy7" role="2yBVEW" />
      <node concept="2yBZL0" id="5HAKO7U1zye" role="2xpFZW" />
      <node concept="2yBZL0" id="5HAKO7U1zyh" role="2xpFZW" />
      <node concept="2yBZL0" id="5HAKO7U1zyl" role="2xpFZW" />
    </node>
    <node concept="2yBXQF" id="5HAKO7U1zxT" role="2yBXQE">
      <node concept="2yBZL1" id="5HAKO7U1zxU" role="2yBTWR">
        <property role="2yBZL9" value="fasdfasd" />
      </node>
    </node>
  </node>
  <node concept="2yBXQC" id="1N98qX6CDGU">
    <property role="TrG5h" value="Current" />
    <property role="2yAFQB" value="true" />
    <property role="2yAFQD" value="true" />
    <node concept="2yBXQF" id="1N98qX6DdZB" role="2yBXQE">
      <node concept="2yBmGm" id="1N98qX6DehA" role="2yBmGr">
        <property role="2yBmGp" value="Being committed to an asylum" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Def9" role="2xpFZW">
        <property role="2yBZL3" value="Force myself to smile :)" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De0H" role="2yBVEW">
        <property role="2yBZL3" value="Quit (causes other problems to tackle :)" />
      </node>
      <node concept="2yBZL1" id="1N98qX6DdZC" role="2yBTWR">
        <property role="2yBZL9" value="I have a job in toxic work environment" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De0J" role="2yBVEW">
        <property role="2yBZL3" value="Ride it out until termination agreement" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De0M" role="2yBVEW">
        <property role="2yBZL3" value="Get another job" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De0Q" role="2yBVEW">
        <property role="2yBZL3" value="Do services full time then get another job" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1y" role="2yBVEW">
        <property role="2yBZL3" value="Nothing" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deff" role="2xpFZW">
        <property role="2yBZL3" value="Force myself to laugh" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Defi" role="2xpFZW">
        <property role="2yBZL3" value="Do this tackle it drill" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Defm" role="2xpFZW">
        <property role="2yBZL3" value="Do the cause drill" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Defr" role="2xpFZW">
        <property role="2yBZL3" value="Quit :)" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Degd" role="2xpFZW">
        <property role="2yBZL3" value="Tape a day" />
      </node>
      <node concept="2yBmGm" id="1N98qX6DehC" role="2yBmGr">
        <property role="2yBmGp" value="Being committed to a psychiatric hospital" />
      </node>
      <node concept="2yBmGm" id="1N98qX6DehF" role="2yBmGr">
        <property role="2yBmGp" value="Living with people who never answer your question" />
      </node>
      <node concept="2yBmGm" id="1N98qX6DehJ" role="2yBmGr">
        <property role="2yBmGp" value="Living it a world where all answers are non sequitur" />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6DdZF" role="2yBXQE">
      <node concept="2yBmGm" id="1N98qX6DehY" role="2yBmGr">
        <property role="2yBmGp" value="Passing my inburgering exams" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Defx" role="2xpFZW">
        <property role="2yBZL3" value="Wait till get to Flag" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De15" role="2yBVEW">
        <property role="2yBZL3" value="Train at AMS" />
      </node>
      <node concept="2yBZL1" id="1N98qX6DdZG" role="2yBTWR">
        <property role="2yBZL9" value="I need to finish my training" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De17" role="2yBVEW">
        <property role="2yBZL3" value="Got to Flag finish it" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1a" role="2yBVEW">
        <property role="2yBZL3" value="Finish PS at AMS and Levels at Flag" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Defz" role="2xpFZW">
        <property role="2yBZL3" value="Train at AMS now" />
      </node>
      <node concept="2yBmGm" id="1N98qX6Dei0" role="2yBmGr">
        <property role="2yBmGp" value="Gettting a college degree" />
      </node>
      <node concept="2yBmGm" id="1N98qX6Dei3" role="2yBmGr">
        <property role="2yBmGp" value="Reading Story of Civilization" />
      </node>
      <node concept="2yBmGm" id="1N98qX6Dei7" role="2yBmGr">
        <property role="2yBmGp" value="Reading Gibbon" />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6DdZL" role="2yBXQE">
      <node concept="2yBmGm" id="1N98qX6Deic" role="2yBmGr">
        <property role="2yBmGp" value="See first one above" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DefG" role="2xpFZW">
        <property role="2yBZL3" value="Handle or disconnect" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1e" role="2yBVEW">
        <property role="2yBZL3" value="Attempted to handle it for 2 years now" />
      </node>
      <node concept="2yBZL1" id="1N98qX6DdZM" role="2yBTWR">
        <property role="2yBZL9" value="I work with crazy people" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1g" role="2yBVEW">
        <property role="2yBZL3" value="Quit" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1j" role="2yBVEW">
        <property role="2yBZL3" value="Disconnect" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1n" role="2yBVEW">
        <property role="2yBZL3" value="Write reports" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1C" role="2yBVEW">
        <property role="2yBZL3" value="Ignore them" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1s" role="2yBVEW">
        <property role="2yBZL3" value="Nothing" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DefI" role="2xpFZW">
        <property role="2yBZL3" value="already tried handling so disconnect" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DefL" role="2xpFZW">
        <property role="2yBZL3" value="Move on" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DefP" role="2xpFZW">
        <property role="2yBZL3" value="Run for the hills" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Degk" role="2xpFZW">
        <property role="2yBZL3" value="Restudy PTS/SP materials" />
      </node>
      <node concept="2yBmGm" id="1N98qX6Deie" role="2yBmGr">
        <property role="2yBmGp" value="be on a toxic sports team" />
      </node>
      <node concept="2yBmGm" id="1N98qX6Deih" role="2yBmGr">
        <property role="2yBmGp" value="be connected to multiple SP and PTS people" />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6DdZT" role="2yBXQE">
      <node concept="2yBZL0" id="1N98qX6Deg4" role="2xpFZW">
        <property role="2yBZL3" value="SSBB" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1J" role="2yBVEW">
        <property role="2yBZL3" value="Finish training fast then bridge" />
      </node>
      <node concept="2yBZL1" id="1N98qX6DdZU" role="2yBTWR">
        <property role="2yBZL9" value="I need to go up the Bridge" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deg6" role="2xpFZW">
        <property role="2yBZL3" value="SA" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deg9" role="2xpFZW">
        <property role="2yBZL3" value="Other PABs" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DegA" role="2xpFZW">
        <property role="2yBZL3" value="Continue Chrono Route" />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6De03" role="2yBXQE">
      <node concept="2yBZL0" id="1N98qX6DegF" role="2xpFZW">
        <property role="2yBZL3" value="Talk with them" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1O" role="2yBVEW">
        <property role="2yBZL3" value="spend time with them on nights/weekends" />
      </node>
      <node concept="2yBZL1" id="1N98qX6De04" role="2yBTWR">
        <property role="2yBZL9" value="I need to take responsibility for my children" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1Q" role="2yBVEW">
        <property role="2yBZL3" value="Get more involved with their education" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1T" role="2yBVEW">
        <property role="2yBZL3" value="Find out what they want to do" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De1X" role="2yBVEW">
        <property role="2yBZL3" value="Let them help" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De22" role="2yBVEW">
        <property role="2yBZL3" value="Put them to work somehow" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DegH" role="2xpFZW">
        <property role="2yBZL3" value="ignore craziness and hostilities" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DegK" role="2xpFZW">
        <property role="2yBZL3" value="Auditing Comm cycle in" />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6De0f" role="2yBXQE">
      <node concept="2yBZL0" id="1N98qX6DegW" role="2xpFZW">
        <property role="2yBZL3" value="find my ideas sheets" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De28" role="2yBVEW">
        <property role="2yBZL3" value="Partner with someone else" />
      </node>
      <node concept="2yBZL1" id="1N98qX6De0g" role="2yBTWR">
        <property role="2yBZL9" value="I need to create new forms of income" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2a" role="2yBVEW">
        <property role="2yBZL3" value="Start new company" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2d" role="2yBVEW">
        <property role="2yBZL3" value="Get a new job" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2h" role="2yBVEW">
        <property role="2yBZL3" value="Start writing" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2m" role="2yBVEW">
        <property role="2yBZL3" value="Attend conferences" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2s" role="2yBVEW">
        <property role="2yBZL3" value="Apply formulas" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2z" role="2yBVEW">
        <property role="2yBZL3" value="Use admin tools at it" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2U" role="2yBVEW">
        <property role="2yBZL3" value="Dust off ideas and take them further" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De33" role="2yBVEW">
        <property role="2yBZL3" value="contact D&amp;T?" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Dee8" role="2yBVEW">
        <property role="2yBZL3" value="Work on modelix and see how to monetize that work/project" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deej" role="2yBVEW">
        <property role="2yBZL3" value="MPS - MDE Systems type of thing again" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deev" role="2yBVEW">
        <property role="2yBZL3" value="MPS in US" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DeeG" role="2yBVEW">
        <property role="2yBZL3" value="DMS and MPS - other products" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deha" role="2yBVEW">
        <property role="2yBZL3" value="SCN products - MPS/DSL" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DeeU" role="2yBVEW">
        <property role="2yBZL3" value="Parnas and tools (these are part of dust off)" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DegY" role="2xpFZW">
        <property role="2yBZL3" value="put the word out" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deh1" role="2xpFZW">
        <property role="2yBZL3" value="update my resume" />
      </node>
      <node concept="2yBZL0" id="1N98qX6DejZ" role="2yBVEW">
        <property role="2yBZL3" value="Marcel links on " />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6De0t" role="2yBXQE">
      <node concept="2yBZL0" id="1N98qX6Dehq" role="2xpFZW">
        <property role="2yBZL3" value="work quickly" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2F" role="2yBVEW">
        <property role="2yBZL3" value="combine them creatively" />
      </node>
      <node concept="2yBZL1" id="1N98qX6De0u" role="2yBTWR">
        <property role="2yBZL9" value="I need to make all of the above work successfully all a the same time" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2H" role="2yBVEW">
        <property role="2yBZL3" value="be efficient" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2K" role="2yBVEW">
        <property role="2yBZL3" value="eliminate waste of times" />
      </node>
      <node concept="2yBZL0" id="1N98qX6De2O" role="2yBVEW">
        <property role="2yBZL3" value="use admin tools, charts, diagrams, spreadsheets etc." />
      </node>
      <node concept="2yBZL0" id="1N98qX6Dehs" role="2xpFZW">
        <property role="2yBZL3" value="don't Q&amp;A" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Dehv" role="2xpFZW">
        <property role="2yBZL3" value="don't think too much" />
      </node>
    </node>
    <node concept="2yBXQF" id="1N98qX6Deiv" role="2yBXQE">
      <node concept="2yBZL0" id="1N98qX6DejX" role="2yBVEW">
        <property role="2yBZL3" value="Refactoring to DSLs (Martin Fowler Series) Refactor to Framework" />
      </node>
      <node concept="2yBZL1" id="1N98qX6Deiw" role="2yBTWR">
        <property role="2yBZL9" value="I need to write a book" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Dekg" role="2yBVEW">
        <property role="2yBZL3" value="Martin (Bruce Series on DSLs)" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Dekj" role="2yBVEW">
        <property role="2yBZL3" value="Just for Fun" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Dekn" role="2yBVEW">
        <property role="2yBZL3" value="Is this anything?" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deks" role="2yBVEW">
        <property role="2yBZL3" value="I wouldn't mind if... (determinism versus determination)" />
      </node>
      <node concept="2yBZL0" id="1N98qX6Deky" role="2yBVEW">
        <property role="2yBZL3" value="Talking my lanuage (CLO, Managers guided, developers guide, relation to AI etc)" />
      </node>
    </node>
  </node>
</model>

