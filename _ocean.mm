<map><node BACKGROUND_COLOR="" COLOR="#000000" FOLDED="false" STYLE="fork" TEXT="ocean"><font BOLD="True" NAME="courier" SIZE="14" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Ocean realm specialization</dd><dt><b>ID</b></dt><dd>cmip6.ocean</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi, David Hassell, Mark Greenslade</dd><dt><b>Contributors</b></dt><dd>CMIP5 version +, Julie Dehayes (LOCEAN/IPSL), Steve Griffies (GFDL), Gokhan Danabasoglu (NCAR)</dd>
    </dl>
  </body>
</html></richcontent><node POSITION="left" STYLE="bubble" TEXT="legend"><node BACKGROUND_COLOR="" COLOR="#000000" STYLE="bubble" TEXT="realm"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Scientific area of a numerical model.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#ccccff" COLOR="#000000" STYLE="bubble" TEXT="grid"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Provides structure for description of a process simulated within a particular model realm.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#ffff66" COLOR="#000000" STYLE="bubble" TEXT="key-properties"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Provides structure for description of a process simulated within a particular model realm.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" STYLE="bubble" TEXT="process"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Provides structure for description of a process simulated within a particular model realm.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" STYLE="bubble" TEXT="sub-process"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Provides structure for description of part of a process simulated within a particular model realm. Typically this will be a part of process which shares common properties.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" STYLE="bubble" TEXT="detail"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Provides details of specific properties of a process, sub-process, key properties, etc.  There are two possible specialisations expected: (1) A detail_vocabulary is identified, and a cardinality is assigned to that for possible responses; (2) Detail is used to provide a collection or a set of properties which are defined in the sub-class.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" STYLE="bubble" TEXT="detail-property"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>A property associated with a detail defined as a 4 member tuple: name, type, cardinality, description.</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" STYLE="bubble" TEXT="enum-choice"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>A choice within an enumeration.</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#ccccff" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="grid"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Ocean grid and discretisation</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#ccccff" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="discretisation"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of discretisation scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="vertical"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical coordinate in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.vertical</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="coordinates"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical coordinates in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.vertical.coordinates</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical coordinates in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.vertical.coordinates</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Hybrid / ALE"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Hybrid / Z+S"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Hybrid / Z+isopycnic"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Hybrid / other"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnic - other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Other density-based coordinate</dd><dt><b>ID</b></dt><dd>vertical-coordinate-types.isopycnic---other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnic - sigma 0"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Density referenced to the surface</dd><dt><b>ID</b></dt><dd>vertical-coordinate-types.isopycnic---sigma-0</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnic - sigma 2"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Density referenced to 2000 m</dd><dt><b>ID</b></dt><dd>vertical-coordinate-types.isopycnic---sigma-2</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnic - sigma 4"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Density referenced to 4000 m</dd><dt><b>ID</b></dt><dd>vertical-coordinate-types.isopycnic---sigma-4</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="P*"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Pressure referenced (P)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="S-coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Z**"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Z*-coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Z-coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="partial_steps"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Using partial steps with Z or Z* vertical coordinate in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.vertical.partial_steps</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Using partial steps with Z or Z* vertical coordinate in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.vertical.partial_steps</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="horizontal"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of horizontal discretisation scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.horizontal</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Horizontal grid type</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.horizontal.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Horizontal grid type</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.horizontal.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Lat-lon"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Rotated north pole"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Two north poles (ORCA-style)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Horizontal discretisation scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.horizontal.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Horizontal discretisation scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.grid.discretisation.horizontal.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Finite difference / Arakawa B-grid"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Finite difference / Arakawa C-grid"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Finite difference / Arakawa E-grid"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Finite elements"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Finite volumes"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Unstructured grid"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node></node></node><node BACKGROUND_COLOR="#ffff66" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="key_properties"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Key properties of the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="general"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>General key properties in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="model_family"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of ocean model.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general.model_family</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of ocean model.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general.model_family</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="OGCM"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="mixed layer ocean"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="slab ocean"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="basic_approximations"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Basic approximations made in the ocean.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general.basic_approximations</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.N</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Basic approximations made in the ocean.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general.basic_approximations</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.N</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Boussinesq"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-hydrostatic"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Primitive equations"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="prognostic_variables"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>List of prognostic variables in the ocean component.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general.prognostic_variables</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.N</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>List of prognostic variables in the ocean component.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.general.prognostic_variables</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.N</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Conservative temperature"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Potential temperature"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="SSH"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Sea Surface Height</dd><dt><b>ID</b></dt><dd>prognostic-vars-types.ssh</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Salinity"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="U-velocity"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="V-velocity"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="W-velocity"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="seawater_properties"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Physical properties of seawater in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eos_type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EOS for sea water</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EOS for sea water</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Jackett et al. 2006"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Mc Dougall et al."><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="TEOS 2010"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eos_functional_temp"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Temperature used in EOS for sea water</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_functional_temp</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Temperature used in EOS for sea water</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_functional_temp</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Conservative temperature"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Potential temperature"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eos_functional_salt"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Salinity used in EOS for sea water</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_functional_salt</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Salinity used in EOS for sea water</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_functional_salt</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Absolute salinity Sa"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Practical salinity Sp"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eos_functional_depth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Depth or pressure used in EOS for sea water ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_functional_depth</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Depth or pressure used in EOS for sea water ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.eos_functional_depth</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Depth (meters)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Pressure (dbars)"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_freezing_point"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Equation used to compute the freezing point (in deg C) of seawater, as a function of salinity and pressure</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.ocean_freezing_point</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Equation used to compute the freezing point (in deg C) of seawater, as a function of salinity and pressure</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.ocean_freezing_point</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="TEOS 2010"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_specific_heat"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Specific heat in ocean (cpocean) in J/(kg K)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.ocean_specific_heat</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Specific heat in ocean (cpocean) in J/(kg K)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.ocean_specific_heat</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_reference_density"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Boussinesq reference density (rhozero) in kg / m3</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.ocean_reference_density</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Boussinesq reference density (rhozero) in kg / m3</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.seawater_properties.ocean_reference_density</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="bathymetry"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of bathymetry in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="reference_dates"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Reference date of bathymetry</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.reference_dates</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Reference date of bathymetry</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.reference_dates</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="21000 years BP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="6000 years BP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="LGM"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Last Glacial Maximum</dd><dt><b>ID</b></dt><dd>bathymetry-ref-dates.lgm</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Pliocene"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Present day"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the bathymetry fixed in time in the ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.type</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the bathymetry fixed in time in the ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.type</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_smoothing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any smoothing or hand editing of bathymetry in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.ocean_smoothing</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any smoothing or hand editing of bathymetry in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.ocean_smoothing</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="source"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe source of bathymetry in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.source</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe source of bathymetry in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.bathymetry.source</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="nonoceanic_waters"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Non oceanic waters treatement in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.nonoceanic_waters</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="isolated_seas"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how isolated seas is performed</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.nonoceanic_waters.isolated_seas</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how isolated seas is performed</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.nonoceanic_waters.isolated_seas</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="river_mouth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how river mouth mixing or estuaries specific treatment is performed</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.nonoceanic_waters.river_mouth</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how river mouth mixing or estuaries specific treatment is performed</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.nonoceanic_waters.river_mouth</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#ffff66" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="conservation"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Conservation in the ocean component</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties conserved in the ocean component</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Conservation scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.N</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Conservation scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.N</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Energy"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Enstrophy"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Momentum"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Salt"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Volume of ocean"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="method"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how conservation properties are ensured in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.method</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how conservation properties are ensured in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.method</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="consistency_properties"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Any additional consistency properties (energy conversion, pressure gradient discretisation, ...)?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.consistency_properties</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Any additional consistency properties (energy conversion, pressure gradient discretisation, ...)?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.consistency_properties</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="citations"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Set of pertinent citations.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.citations</dd><dt><b>Type</b></dt><dd>shared.citation</dd><dt><b>Cardinality</b></dt><dd>0.N</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Set of pertinent citations.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.key_properties.conservation.details.citations</dd><dt><b>Type</b></dt><dd>shared.citation</dd><dt><b>Cardinality</b></dt><dd>0.N</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="timestepping_framework"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean time stepping framework</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean time stepping framework</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="timestepping_attributes"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of time stepping in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_attributes</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="time_step"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Ocean time step in seconds</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_attributes.time_step</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Ocean time step in seconds</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_attributes.time_step</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="diurnal_cycle"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Diurnal cycle type</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_attributes.diurnal_cycle</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Diurnal cycle type</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_attributes.diurnal_cycle</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>No diurnal cycle in ocean</dd><dt><b>ID</b></dt><dd>diurnal-cycle-types.none</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Specific treatment"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Specific treament</dd><dt><b>ID</b></dt><dd>diurnal-cycle-types.specific-treatment</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Via coupling"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Diurnal cycle via coupling frequency</dd><dt><b>ID</b></dt><dd>diurnal-cycle-types.via-coupling</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="timestepping_tracers_scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of tracers time stepping in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_tracers_scheme</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Time stepping tracer scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_tracers_scheme.tracers</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Time stepping tracer scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_tracers_scheme.tracers</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="AM3-LF (ROMS)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>AM3-LF used in ROMS</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.am3-lf-(roms)</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Forward operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Forward operator scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.forward-operator</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Forward-backward"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Forward-backward scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.forward-backward</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Leap-frog + Asselin filter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Leap-frog scheme with Asselin filter</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.leap-frog-+-asselin-filter</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Leap-frog + Periodic Euler backward solver"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Leap-frog scheme with Periodic Euler backward solver</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.leap-frog-+-periodic-euler-backward-solver</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Predictor-corrector"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Predictor-corrector scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.predictor-corrector</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="barotropic_solver_scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic solver in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_solver_scheme</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="barotropic_solver"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic solver scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_solver_scheme.barotropic_solver</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic solver scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_solver_scheme.barotropic_solver</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="AM3-LF (ROMS)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>AM3-LF used in ROMS</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.am3-lf-(roms)</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Forward operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Forward operator scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.forward-operator</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Forward-backward"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Forward-backward scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.forward-backward</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Leap-frog + Asselin filter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Leap-frog scheme with Asselin filter</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.leap-frog-+-asselin-filter</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Leap-frog + Periodic Euler backward solver"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Leap-frog scheme with Periodic Euler backward solver</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.leap-frog-+-periodic-euler-backward-solver</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Predictor-corrector"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Predictor-corrector scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.predictor-corrector</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic solver type</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_solver_scheme.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic solver type</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_solver_scheme.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Preconditioned conjugate gradient"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Sub cyling"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="barotropic_momentum_scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic momentum solver in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_momentum_scheme</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="barotropic_momentum"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic momentum scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_momentum_scheme.barotropic_momentum</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Barotropic momentum scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.barotropic_momentum_scheme.barotropic_momentum</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="AM3-LF (ROMS)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>AM3-LF used in ROMS</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.am3-lf-(roms)</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Forward operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Forward operator scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.forward-operator</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Forward-backward"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Forward-backward scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.forward-backward</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Leap-frog + Asselin filter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Leap-frog scheme with Asselin filter</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.leap-frog-+-asselin-filter</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Leap-frog + Periodic Euler backward solver"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Leap-frog scheme with Periodic Euler backward solver</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.leap-frog-+-periodic-euler-backward-solver</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Predictor-corrector"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Predictor-corrector scheme</dd><dt><b>ID</b></dt><dd>ocean-timestepping-types.predictor-corrector</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="advection"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean advection</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean advection</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="momemtum"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Flux form"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Vector form"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme_name"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Name of ocean momemtum advection scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details.scheme_name</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Name of ocean momemtum advection scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details.scheme_name</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ALE"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Using ALE for vertical advection ? (if vertical coordinates are sigma)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details.ALE</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Using ALE for vertical advection ? (if vertical coordinates are sigma)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum.details.ALE</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="lateral_tracers"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="3rd order upwind"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 2nd order"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 4th order"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="MUSCL"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Piecewise Parabolic method"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Prather 2nd moment (PSOM)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="QUICKEST"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Sweby"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Total Variance Dissipation (TVD)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="flux_limiter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="passive_tracers"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Passive tracers advected</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.passive_tracers</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>0.N</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Passive tracers advected</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.passive_tracers</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>0.N</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="CFC 11"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="CFC 12"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Ideal age"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="SF6"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="passive_tracers_advection"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is advection of passive tracers different than active ? if so, describe</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.passive_tracers_advection</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is advection of passive tracers different than active ? if so, describe</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lateral_tracers.details.passive_tracers_advection</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="vertical_tracers"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vertical_tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vertical_tracers.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vertical_tracers.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vertical_tracers.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="3rd order upwind"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 2nd order"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 4th order"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="MUSCL"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Piecewise Parabolic method"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Prather 2nd moment (PSOM)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="QUICKEST"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Sweby"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Total Variance Dissipation (TVD)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="flux_limiter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vertical_tracers.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vertical_tracers.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="lateral_physics"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean lateral physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean lateral physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_transient_eddy_representation"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of transient eddy representation in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.ocean_transient_eddy_representation</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of transient eddy representation in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.ocean_transient_eddy_representation.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of transient eddy representation in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.ocean_transient_eddy_representation.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Eddy active"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Full resolution of eddies</dd><dt><b>ID</b></dt><dd>latphys-transient-eddy-types.eddy-active</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Eddy admitting"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Some eddy activity permitted by resolution</dd><dt><b>ID</b></dt><dd>latphys-transient-eddy-types.eddy-admitting</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>No transient eddies in ocean</dd><dt><b>ID</b></dt><dd>latphys-transient-eddy-types.none</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics operator for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="direction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Direction of lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator.direction</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Direction of lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator.direction</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Geopotential"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Horizontal"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Iso-level"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isoneutral"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnal"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Order of lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator.order</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Order of lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator.order</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Bi-harmonic"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Fourth order</dd><dt><b>ID</b></dt><dd>latphys-operator-order-types.bi-harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Harmonic"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>latphys-operator-order-types.harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="discretisation"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Discretisation of lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator.discretisation</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Discretisation of lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.operator.discretisation</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Flux limiter"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Higher order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Higher order</dd><dt><b>ID</b></dt><dd>latphys-operator-discret-types.higher-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Second order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>latphys-operator-discret-types.second-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_viscosity_coeff"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of eddy viscosity coeff in lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Lateral physics momemtum eddy viscosity coeff type in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Lateral physics momemtum eddy viscosity coeff type in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Space varying"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Time + space varying (Smagorinsky)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant_coefficient"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.constant_coefficient</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.constant_coefficient</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="variable_coefficient"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics momemtum scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.variable_coefficient</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics momemtum scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.variable_coefficient</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="coeff_background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="coeff_backscatter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics momemtum scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics momemtum scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="mesoscale_closure"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there a mesoscale closure in the lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.details.mesoscale_closure</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there a mesoscale closure in the lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.details.mesoscale_closure</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="submesoscale_mixing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there a submesoscale mixing parameterisation (i.e Fox-Kemper) in the lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.details.submesoscale_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there a submesoscale mixing parameterisation (i.e Fox-Kemper) in the lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.details.submesoscale_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics operator for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="direction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Direction of lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator.direction</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Direction of lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator.direction</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Geopotential"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Horizontal"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Iso-level"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isoneutral"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnal"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Order of lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator.order</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Order of lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator.order</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Bi-harmonic"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Fourth order</dd><dt><b>ID</b></dt><dd>latphys-operator-order-types.bi-harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Harmonic"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>latphys-operator-order-types.harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="discretisation"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Discretisation of lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator.discretisation</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Discretisation of lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.operator.discretisation</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Flux limiter"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Higher order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Higher order</dd><dt><b>ID</b></dt><dd>latphys-operator-discret-types.higher-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Second order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>latphys-operator-discret-types.second-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_viscosity_coeff"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of eddy viscosity coeff in lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Lateral physics tracers eddy viscosity coeff type in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Lateral physics tracers eddy viscosity coeff type in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Space varying"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Time + space varying (Smagorinsky)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant_coefficient"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.constant_coefficient</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.constant_coefficient</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="variable_coefficient"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics tracers scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.variable_coefficient</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics tracers scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.variable_coefficient</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="coeff_background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="coeff_backscatter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_induced_velocity"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of eddy induced velocity (EIV) in lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV in lateral physics tracers in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV in lateral physics tracers in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="GM"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Gent and McWilliams</dd><dt><b>ID</b></dt><dd>latphys-eiv-types.gm</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant_val"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If EIV scheme for tracers is constant, specify coefficient value (M2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.constant_val</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If EIV scheme for tracers is constant, specify coefficient value (M2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.constant_val</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="flux_type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV flux (advective or skew)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.flux_type</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV flux (advective or skew)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.flux_type</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="added_diffusivity"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV added diffusivity (constant, flow dependent or none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.added_diffusivity</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV added diffusivity (constant, flow dependent or none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.added_diffusivity</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="vertical_physics"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean vertical physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean vertical physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="boundary_layer_mixing"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary layer mixing in the ocean (aka mixed layer)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical physics in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="langmuir_cells_mixing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there Langmuir cells mixing in upper ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.details.langmuir_cells_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there Langmuir cells mixing in upper ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.details.langmuir_cells_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary layer (BL) mixing on tracers in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of boundary layer mixing for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of boundary layer mixing for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Bulk Mixed Layer"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - KPP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - TKE"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="closure_order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If turbulent BL mixing of tracers, specific order of closure (0, 1, 2.5, 3)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.closure_order</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If turbulent BL mixing of tracers, specific order of closure (0, 1, 2.5, 3)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.closure_order</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant BL mixing of tracers, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant BL mixing of tracers, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background BL mixing of tracers coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background BL mixing of tracers coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary layer (BL) mixing on momentum in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of boundary layer mixing for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of boundary layer mixing for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Bulk Mixed Layer"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - KPP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - TKE"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="closure_order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If turbulent BL mixing of momentum, specific order of closure (0, 1, 2.5, 3)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.closure_order</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If turbulent BL mixing of momentum, specific order of closure (0, 1, 2.5, 3)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.closure_order</dd><dt><b>Type</b></dt><dd>float</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant BL mixing of momentum, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant BL mixing of momentum, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background BL mixing of momentum coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background BL mixing of momentum coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="interior_mixing"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior vertical mixing in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior mixing in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="convection_type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical convection in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.convection_type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical convection in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.convection_type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Enhanced vertical diffusion"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Included in turbulence closure"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-penetrative convective adjustment"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tide_induced_mixing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how tide induced mixing is modelled (barotropic, baroclinic, none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.tide_induced_mixing</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how tide induced mixing is modelled (barotropic, baroclinic, none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.tide_induced_mixing</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="double_diffusion"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there double diffusion</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.double_diffusion</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there double diffusion</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.double_diffusion</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="shear_mixing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there interior shear mixing</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.shear_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there interior shear mixing</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.details.shear_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior mixing on tracers in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of interior mixing for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of interior mixing for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure / TKE"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant interior mixing of tracers, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant interior mixing of tracers, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="profile"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the background interior mixing using a vertical profile for tracers (i.e is NOT constant) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.profile</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the background interior mixing using a vertical profile for tracers (i.e is NOT constant) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.profile</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background interior mixing of tracers coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background interior mixing of tracers coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior mixing on momentum in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of interior mixing for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of interior mixing for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure / TKE"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant interior mixing of momentum, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant interior mixing of momentum, specific coefficient (m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.constant</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="profile"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the background interior mixing using a vertical profile for momentum (i.e is NOT constant) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.profile</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the background interior mixing using a vertical profile for momentum (i.e is NOT constant) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.profile</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background interior mixing of momentum coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background interior mixing of momentum coefficient, (schema and value in m2/s - may by none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum.background</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="uplow_boundaries"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean upper and lower boundaries</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean upper and lower boundaries</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="free_surface"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of free surface in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Free surface scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Free surface scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear filtered"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear implicit"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear semi-explicit"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear filtered"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear implicit"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear semi-explicit"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="embeded_seaice"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the sea-ice embeded in the ocean model (instead of levitating) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface.embeded_seaice</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the sea-ice embeded in the ocean model (instead of levitating) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface.embeded_seaice</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="bottom_boundary_layer"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of bottom boundary layer in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type_of_bbl"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of bottom boundary layer in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.type_of_bbl</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of bottom boundary layer in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.type_of_bbl</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Acvective"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Diffusive"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="lateral_mixing_coef"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If bottom BL is diffusive, specify value of lateral mixing coefficient (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.lateral_mixing_coef</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If bottom BL is diffusive, specify value of lateral mixing coefficient (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.lateral_mixing_coef</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="sill_overflow"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any specific treatment of sill overflows</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.sill_overflow</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any specific treatment of sill overflows</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.sill_overflow</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="boundary_forcing"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary forcing within the ocean component</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary forcing within the ocean component</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing</dd><dt><b>QC status</b></dt><dd>draft</dd><dt><b>Contact</b></dt><dd>Eric Guilyardi</dd><dt><b>Authors</b></dt><dd>Eric Guilyardi</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="boundary_forcing_details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary forcing</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="surface_pressure"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how surface pressure is transmitted to ocean (via sea-ice, nothing specific,...)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.surface_pressure</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how surface pressure is transmitted to ocean (via sea-ice, nothing specific,...)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.surface_pressure</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="momentum_flux_correction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any type of ocean surface momentum flux correction and, if applicable, how it is applied and where.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.momentum_flux_correction</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any type of ocean surface momentum flux correction and, if applicable, how it is applied and where.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.momentum_flux_correction</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers_flux_correction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any type of ocean surface tracers flux correction and, if applicable, how it is applied and where.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.tracers_flux_correction</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any type of ocean surface tracers flux correction and, if applicable, how it is applied and where.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.tracers_flux_correction</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="wave_effects"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how wave effects are modelled at ocean surface.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.wave_effects</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how wave effects are modelled at ocean surface.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.wave_effects</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="river_runoff_budget"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how river runoff from land surface is routed to ocean and any global adjustment done.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.river_runoff_budget</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how river runoff from land surface is routed to ocean and any global adjustment done.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.river_runoff_budget</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="geothermal_heating"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how geothermal heating is present at ocean bottom.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.geothermal_heating</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe if/how geothermal heating is present at ocean bottom.</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details.geothermal_heating</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Key properties of momentum boundary forcing in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="bottom_friction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of momentum bottom friction in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum.bottom_friction</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of momentum bottom friction in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum.bottom_friction.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of momentum bottom friction in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum.bottom_friction.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant drag coefficient"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear (drag function of speed of tides)"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="lateral_friction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of momentum lateral friction in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum.lateral_friction</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of momentum lateral friction in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum.lateral_friction.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of momentum lateral friction in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum.lateral_friction.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Free-slip"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="No-slip"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Key properties of tracer boundary forcing in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="sunlight_penetration"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of sunlight penetration scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of sunlight penetration scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of sunlight penetration scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="1 extinction depth"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="2 extinction depth"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="3 extinction depth"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_colour"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the ocean sunlight penetration scheme ocean colour dependent ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.ocean_colour</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the ocean sunlight penetration scheme ocean colour dependent ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.ocean_colour</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="extinction_depth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe and list extinctions depths for sunlight penetration scheme (if applicable).</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.extinction_depth</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe and list extinctions depths for sunlight penetration scheme (if applicable).</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.extinction_depth</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="fresh_water_forcing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of surface fresh water forcing in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="from_atmopshere"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface fresh water forcing from atmos in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing.from_atmopshere</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface fresh water forcing from atmos in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing.from_atmopshere</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Freshwater flux"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Virtual salt flux"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="from_sea_ice"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface fresh water forcing from sea-ice in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing.from_sea_ice</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface fresh water forcing from sea-ice in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing.from_sea_ice</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Freshwater flux"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Real salt flux"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Virtual salt flux"><font BOLD="True" NAME="courier" SIZE="10" /></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="forced_mode_restoring"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface salinity restoring in forced mode (OMIP)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing.forced_mode_restoring</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface salinity restoring in forced mode (OMIP)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.fresh_water_forcing.forced_mode_restoring</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node></node></map>