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
            {
                $Type : 'UI.DataField',
                Value : paginas,
                Label : 'paginas',
            },
            {
                $Type : 'UI.DataField',
                Value : autor_ID,
                Label : 'Autor',
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Capítulos',
            ID : 'Captulos',
            Target : 'capitulos/@UI.LineItem#Captulos',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Logs Information',
            ID : 'LogsInformation',
            Target : '@UI.FieldGroup#LogsInformation',
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
            Value : paginas,
            Label : 'paginas',
        },
    ],
    UI.SelectionFields : [
        titulo,
        ID,
        autor_ID,
    ],
    UI.HeaderFacets : [
        
    ],
    UI.FieldGroup #FormSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.HeaderInfo : {
        TypeName : 'Libro',
        TypeNamePlural : 'Libros',
        Title : {
            $Type : 'UI.DataField',
            Value : titulo,
        },
        TypeImageUrl : 'sap-icon://course-book',
        Description : {
            $Type : 'UI.DataField',
            Value : ID,
        },
    },
    UI.FieldGroup #LogsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
    },
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
        Common.Label : 'autor_ID',
    )
};

annotate service.Libro with {
    titulo @Common.Label : 'titulo'
};

annotate service.Capitulo with @(
    UI.LineItem #Captulos : [
        {
            $Type : 'UI.DataField',
            Value : libro.capitulos.numero,
            Label : 'numero',
        },
        {
            $Type : 'UI.DataField',
            Value : libro.capitulos.titulo,
            Label : 'Título',
        },
        {
            $Type : 'UI.DataField',
            Value : libro.capitulos.paginas,
            Label : 'paginas',
        },
    ]
);

annotate service.Libro with {
    ID @Common.Label : 'ID'
};

