using MiLibreria as service from '../../srv/service';
annotate service.Libro with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'titulo',
                Value : titulo,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Label : 'titulo',
            Value : titulo,
        },
        {
            $Type : 'UI.DataField',
            Value : autor_ID,
            Label : 'Autor',
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
    ],
    UI.SelectionFields : [
        titulo,
    ],
);

annotate service.Libro with {
    autor @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Autor',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : autor_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
            ],
        },
        Common.ExternalID : autor.nombre,
    )
};

annotate service.Libro with {
    titulo @Common.Label : 'titulo'
};

