
module.exports =
    elements:
        example_ctrl_pkg:
            elements:
                example_main_ctrl:  {language: ['cpp'], build: 'obj', deploy: 'dist', codegen: true, active: true}
                example_hw_adapter: {language: ['cpp'], build: 'obj', deploy: 'dist', codegen: true, active: true}
                example_ctrl_app:   {language: ['cpp'], build: 'app', deploy: 'dist', codegen: true, active: true}
        example_vis_pkg:
            elements:
                example_custom_view:  { language: ['coffee'], build: 'obj', deploy: 'dist',    codegen: false, active: true}
