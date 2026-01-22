sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"librerialistview/test/integration/pages/LibroList",
	"librerialistview/test/integration/pages/LibroObjectPage"
], function (JourneyRunner, LibroList, LibroObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('librerialistview') + '/test/flpSandbox.html#librerialistview-tile',
        pages: {
			onTheLibroList: LibroList,
			onTheLibroObjectPage: LibroObjectPage
        },
        async: true
    });

    return runner;
});

