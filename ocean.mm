<map><node BACKGROUND_COLOR="" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean.py" STYLE="fork" TEXT="ocean"><font BOLD="True" NAME="courier" SIZE="14" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Ocean realm specialization</dd><dt><b>ID</b></dt><dd>cmip6.ocean</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean.py</dd>
    </dl>
  </body>
</html></richcontent><node POSITION="left" STYLE="bubble" TEXT="legend"><node BACKGROUND_COLOR="" COLOR="#000000" STYLE="bubble" TEXT="realm"><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Scientific area of a numerical model.</dd>
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
</html></richcontent></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py" STYLE="bubble" TEXT="advection"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean advection</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean advection</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py" STYLE="bubble" TEXT="lat_tra_adv_scheme"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat_tra_adv_scheme</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat_tra_adv_scheme.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="flux_limiter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat_tra_adv_scheme.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat_tra_adv_scheme.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat_tra_adv_scheme.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat_tra_adv_scheme.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 2nd order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.centred-2nd-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 4th order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.centred-4th-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="MUSCL"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.muscl</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Piecewise Parabolic method"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.piecewise-parabolic-method</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Prather 2nd moment (PSOM)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.prather-2nd-moment-(psom)</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="QUICKEST"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.quickest</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Sweby"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.sweby</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Total Variance Dissipation (TVD)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.lat-tra-adv-scheme.details.type.total-variance-dissipation-(tvd)</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py" STYLE="bubble" TEXT="momemtum_adv_scheme"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="mom_adv_ALE"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Using ALE for vertical advection ? (if vertical coordinates are sigma)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details.mom_adv_ALE</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Using ALE for vertical advection ? (if vertical coordinates are sigma)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details.mom_adv_ALE</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="mom_adv_scheme_name"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Name of ocean momemtum advection scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details.mom_adv_scheme_name</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Name of ocean momemtum advection scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details.mom_adv_scheme_name</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of lateral momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum_adv_scheme.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Flux form"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum-adv-scheme.details.type.flux-form</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Vector form"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.momemtum-adv-scheme.details.type.vector-form</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py" STYLE="bubble" TEXT="vert_tra_adv_scheme"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical momemtum advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert_tra_adv_scheme</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_advection.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert_tra_adv_scheme.details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="flux_limiter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert_tra_adv_scheme.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Monotonic flux limiter for vertical tracer advection scheme in ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert_tra_adv_scheme.details.flux_limiter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert_tra_adv_scheme.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical tracer advection scheme in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert_tra_adv_scheme.details.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 2nd order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.centred-2nd-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Centred 4th order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.centred-4th-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="MUSCL"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.muscl</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Piecewise Parabolic method"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.piecewise-parabolic-method</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Prather 2nd moment (PSOM)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.prather-2nd-moment-(psom)</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="QUICKEST"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.quickest</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Sweby"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.sweby</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Total Variance Dissipation (TVD)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.advection.vert-tra-adv-scheme.details.type.total-variance-dissipation-(tvd)</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py" STYLE="bubble" TEXT="boundary_forcing"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary forcing within the ocean component</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary forcing within the ocean component</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="boundary_forcing_details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary forcing</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.boundary_forcing_details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="geothermal_heating"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="surface_pressure"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Key properties of momentum boundary forcing in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.momentum</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py</dd>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant drag coefficient"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.bottom-friction.type.constant-drag-coefficient</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.bottom-friction.type.linear</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.bottom-friction.type.non-linear</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear (drag function of speed of tides)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.bottom-friction.type.non-linear-(drag-function-of-speed-of-tides)</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.bottom-friction.type.none</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.bottom-friction.type.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="lateral_friction"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Free-slip"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.lateral-friction.type.free-slip</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="No-slip"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.lateral-friction.type.no-slip</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.lateral-friction.type.none</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.momentum.lateral-friction.type.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Key properties of tracer boundary forcing in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_boundary_forcing.py</dd>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="1 extinction depth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.sunlight-penetration.scheme.1-extinction-depth</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="2 extinction depth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.sunlight-penetration.scheme.2-extinction-depth</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="3 extinction depth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.sunlight-penetration.scheme.3-extinction-depth</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.sunlight-penetration.scheme.other</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers_sun_extinct_depth"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe and list extinctions depths for sunlight penetration scheme (if applicable).</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.tracers_sun_extinct_depth</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe and list extinctions depths for sunlight penetration scheme (if applicable).</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.tracers_sun_extinct_depth</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers_sun_ocean_colour"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the ocean sunlight penetration scheme ocean colour dependent ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.tracers_sun_ocean_colour</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the ocean sunlight penetration scheme ocean colour dependent ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.sunlight_penetration.tracers_sun_ocean_colour</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="surface_salinity_atmos"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of surface salinity forcing from atmos in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.surface_salinity_atmos</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface salinity forcing from atmos in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.surface_salinity_atmos.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface salinity forcing from atmos in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.surface_salinity_atmos.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Freshwater flux"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.surface-salinity-atmos.scheme.freshwater-flux</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.surface-salinity-atmos.scheme.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Virtual salt flux"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.surface-salinity-atmos.scheme.virtual-salt-flux</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="surface_salinity_seaice"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of surface salinity forcing from sea ice in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.surface_salinity_seaice</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface salinity forcing from sea ice in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.surface_salinity_seaice.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of surface salinity forcing from sea ice in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary_forcing.tracers.surface_salinity_seaice.scheme</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Freshwater flux"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.surface-salinity-seaice.scheme.freshwater-flux</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.surface-salinity-seaice.scheme.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Virtual salt flux"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.boundary-forcing.tracers.surface-salinity-seaice.scheme.virtual-salt-flux</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py" STYLE="bubble" TEXT="lateral_physics"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean lateral physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean lateral physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py</dd>
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
        <dt><b>Description</b></dt><dd>Full resolution of eddies</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.ocean-transient-eddy-representation.scheme.eddy-active</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Eddy admitting"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Some eddy activity permitted by resolution</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.ocean-transient-eddy-representation.scheme.eddy-admitting</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="None"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>No transient eddies in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.ocean-transient-eddy-representation.scheme.none</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics for momentum in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_viscosity_coeff"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of eddy viscosity coeff in lateral physics momemtum scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_backscatter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics momemtum scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics momemtum scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_cst"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_cst</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics momemtum scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_cst</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_var"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics momemtum scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_var</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics momemtum scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.momentum.eddy_viscosity_coeff.eddy_visc_coeff_var</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.eddy-viscosity-coeff.type.constant</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.eddy-viscosity-coeff.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Space varying"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.eddy-viscosity-coeff.type.space-varying</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Time + space varying (Smagorinsky)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.eddy-viscosity-coeff.type.time-+-space-varying-(smagorinsky)</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Geopotential"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.direction.geopotential</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Horizontal"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.direction.horizontal</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Iso-level"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.direction.iso-level</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isoneutral"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.direction.isoneutral</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnal"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.direction.isopycnal</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.direction.other</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="discretisation"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Flux limiter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.discretisation.flux-limiter</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Fourth order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Fourth order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.discretisation.fourth-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.discretisation.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Second order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.discretisation.second-order</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
        <dt><b>Description</b></dt><dd>Fourth order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.order.bi-harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Harmonic"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.order.harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.momentum.operator.order.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of lateral physics for tracers in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_lateral_physics.py</dd>
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
</html></richcontent></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_induced_velocity"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of eddy induced velocity (EIV) in lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eiv_added_diff"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV added diffusivity (constant, flow dependent or none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.eiv_added_diff</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV added diffusivity (constant, flow dependent or none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.eiv_added_diff</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eiv_constant_val"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If EIV scheme for tracers is constant, specify coefficient value (M2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.eiv_constant_val</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If EIV scheme for tracers is constant, specify coefficient value (M2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.eiv_constant_val</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eiv_flux_type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV flux (advective or skew)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.eiv_flux_type</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of EIV flux (advective or skew)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_induced_velocity.eiv_flux_type</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
        <dt><b>Description</b></dt><dd>Gent and McWilliams</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.eddy-induced-velocity.type.gm</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.eddy-induced-velocity.type.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_viscosity_coeff"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of eddy viscosity coeff in lateral physics tracers scheme in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Background value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_background</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_backscatter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there backscatter in eddy viscosity coeff in lateral physics tracers scheme ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_backscatter</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_cst"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_cst</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If constant, value of eddy viscosity coeff in lateral physics tracers scheme (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_cst</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="eddy_visc_coeff_var"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics tracers scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_var</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If space-varying, describe variations of eddy viscosity coeff in lateral physics tracers scheme</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral_physics.tracers.eddy_viscosity_coeff.eddy_visc_coeff_var</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.eddy-viscosity-coeff.type.constant</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.eddy-viscosity-coeff.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Space varying"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.eddy-viscosity-coeff.type.space-varying</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Time + space varying (Smagorinsky)"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.eddy-viscosity-coeff.type.time-+-space-varying-(smagorinsky)</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="operator"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Geopotential"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.direction.geopotential</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Horizontal"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.direction.horizontal</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Iso-level"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.direction.iso-level</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isoneutral"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.direction.isoneutral</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Isopycnal"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.direction.isopycnal</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.direction.other</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="discretisation"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Flux limiter"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.discretisation.flux-limiter</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Fourth order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Fourth order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.discretisation.fourth-order</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.discretisation.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Second order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.discretisation.second-order</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
        <dt><b>Description</b></dt><dd>Fourth order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.order.bi-harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Harmonic"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Second order</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.order.harmonic</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.lateral-physics.tracers.operator.order.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_timestepping_framework.py" STYLE="bubble" TEXT="timestepping_framework"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean time stepping framework</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_timestepping_framework.py</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean time stepping framework</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_timestepping_framework.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="timestepping_attributes"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of time stepping in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping_framework.timestepping_attributes</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="diurnal_cycle"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
        <dt><b>Description</b></dt><dd>No diurnal cycle in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping-framework.timestepping-attributes.diurnal-cycle.none</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Specific treatment"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Specific treament</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping-framework.timestepping-attributes.diurnal-cycle.specific-treatment</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Via coupling"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Diurnal cycle via coupling frequency</dd><dt><b>ID</b></dt><dd>cmip6.ocean.timestepping-framework.timestepping-attributes.diurnal-cycle.via-coupling</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="time_step"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_uplow_boundaries.py" STYLE="bubble" TEXT="uplow_boundaries"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean upper and lower boundaries</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_uplow_boundaries.py</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of ocean upper and lower boundaries</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_uplow_boundaries.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="bottom_boundary_layer"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of bottom boundary layer in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_bbl_lateral_mixing_coef"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If bottom BL is diffusive, specify value of lateral mixing coefficient (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.ocean_bbl_lateral_mixing_coef</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>If bottom BL is diffusive, specify value of lateral mixing coefficient (in m2/s)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.ocean_bbl_lateral_mixing_coef</dd><dt><b>Type</b></dt><dd>int</dd><dt><b>Cardinality</b></dt><dd>0.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_sill_overflow"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any specific treatment of sill overflows</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.ocean_sill_overflow</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe any specific treatment of sill overflows</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.ocean_sill_overflow</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of bottom boundary layer in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of bottom boundary layer in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.bottom_boundary_layer.type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Acvective"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.bottom-boundary-layer.type.acvective</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Diffusive"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.bottom-boundary-layer.type.diffusive</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.bottom-boundary-layer.type.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="free_surface"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of free surface in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="ocean_embeded_seaice"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the sea-ice embeded in the ocean model (instead of levitating) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface.ocean_embeded_seaice</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is the sea-ice embeded in the ocean model (instead of levitating) ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow_boundaries.free_surface.ocean_embeded_seaice</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="scheme"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear filtered"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.linear-filtered</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear implicit"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.linear-implicit</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Linear semi-explicit"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.linear-semi-explicit</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear filtered"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.non-linear-filtered</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear implicit"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.non-linear-implicit</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-linear semi-explicit"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.non-linear-semi-explicit</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.uplow-boundaries.free-surface.scheme.other</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py" STYLE="bubble" TEXT="vertical_physics"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean vertical physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Characteristics of ocean vertical physics</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="vertical_physics_details"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of vertical physics in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="convection_type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical convection in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details.convection_type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Type of vertical convection in ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details.convection_type</dd><dt><b>Type</b></dt><dd>enum</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Enhanced vertical diffusion"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.vertical-physics-details.convection-type.enhanced-vertical-diffusion</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Included in turbulence closure"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.vertical-physics-details.convection-type.included-in-turbulence-closure</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Non-penetrative convective adjustment"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.vertical-physics-details.convection-type.non-penetrative-convective-adjustment</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.vertical-physics-details.convection-type.other</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="langmuir_cells_mixing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there Langmuir cells mixing in upper ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details.langmuir_cells_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Is there Langmuir cells mixing in upper ocean ?</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details.langmuir_cells_mixing</dd><dt><b>Type</b></dt><dd>bool</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tide_induced_mixing"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how tide induced mixing is modelled (barotropic, baroclinic, none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details.tide_induced_mixing</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Describe how tide induced mixing is modelled (barotropic, baroclinic, none)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.vertical_physics_details.tide_induced_mixing</dd><dt><b>Type</b></dt><dd>str</dd><dt><b>Cardinality</b></dt><dd>1.1</dd>
    </dl>
  </body>
</html></richcontent></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py" STYLE="bubble" TEXT="boundary_layer_mixing"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary layer mixing in the ocean (aka mixed layer)</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary layer (BL) mixing on momentum in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.momentum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="closure_order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.constant-value</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.imbeded-as-isopycnic-vertical-coordinate</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.richardson-number-dependent---kt</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.richardson-number-dependent---pp</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Bulk Mixed Layer"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.turbulent-closure---bulk-mixed-layer</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - KPP"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.turbulent-closure---kpp</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.turbulent-closure---mellor-yamada</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - TKE"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.momentum.type.turbulent-closure---tke</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of boundary layer (BL) mixing on tracers in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.boundary_layer_mixing.tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="closure_order"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.constant-value</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.imbeded-as-isopycnic-vertical-coordinate</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.richardson-number-dependent---kt</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.richardson-number-dependent---pp</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Bulk Mixed Layer"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.turbulent-closure---bulk-mixed-layer</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - KPP"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.turbulent-closure---kpp</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.turbulent-closure---mellor-yamada</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - TKE"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.boundary-layer-mixing.tracers.type.turbulent-closure---tke</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node><node BACKGROUND_COLOR="#ACF0F2" COLOR="#000000" FOLDED="false" LINK="https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py" STYLE="bubble" TEXT="interior_mixing"><font BOLD="True" NAME="courier" SIZE="12" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior vertical mixing in the ocean</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing</dd><dt><b>Python Definition</b></dt><dd>https://github.com/ES-DOC/esdoc-mp/blob/master/esdoc_mp/specializations/cmip6/schema/ocean_vertical_physics.py</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="momentum"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior mixing on momentum in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.momentum</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.constant-value</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.imbeded-as-isopycnic-vertical-coordinate</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.richardson-number-dependent---kt</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.richardson-number-dependent---pp</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.turbulent-closure---mellor-yamada</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure / TKE"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.momentum.type.turbulent-closure-/-tke</dd>
    </dl>
  </body>
</html></richcontent></node></node></node><node BACKGROUND_COLOR="#F3FFE2" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="tracers"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>Properties of interior mixing on tracers in the ocean </dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical_physics.interior_mixing.tracers</dd>
    </dl>
  </body>
</html></richcontent><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="background"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="constant"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent></node><node BACKGROUND_COLOR="#C9D787" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="type"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
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
</html></richcontent><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Constant value"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.constant-value</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Imbeded as isopycnic vertical coordinate"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.imbeded-as-isopycnic-vertical-coordinate</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Other"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.other</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - KT"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.richardson-number-dependent---kt</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Richardson number dependent - PP"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.richardson-number-dependent---pp</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure - Mellor-Yamada"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.turbulent-closure---mellor-yamada</dd>
    </dl>
  </body>
</html></richcontent></node><node BACKGROUND_COLOR="#FFFFFF" COLOR="#000000" FOLDED="true" STYLE="bubble" TEXT="Turbulent closure / TKE"><font BOLD="True" NAME="courier" SIZE="10" /><richcontent TYPE="NOTE"><html>
  <head />
  <body>
    <dl>
        <dt><b>Description</b></dt><dd>tbd</dd><dt><b>ID</b></dt><dd>cmip6.ocean.vertical-physics.interior-mixing.tracers.type.turbulent-closure-/-tke</dd>
    </dl>
  </body>
</html></richcontent></node></node></node></node></node></node></map>