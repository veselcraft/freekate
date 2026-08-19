.class public Lcom/perm/kate/ColorPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorPickerAdapter.java"


# instance fields
.field private colorList:Ljava/util/List;

.field private context:Landroid/content/Context;

.field private params:Landroid/widget/AbsListView$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 25

    move-object/from16 v0, p0

    .line 19
    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    move-object/from16 v1, p1

    .line 20
    iput-object v1, v0, Lcom/perm/kate/ColorPickerAdapter;->context:Landroid/content/Context;

    const/16 v1, 0x3c

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "822111"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AC2B16"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CC3A21"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "E66550"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "EFA093"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "F6C5BE"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "933211"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "BD3C16"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "DD4B21"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "F87855"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "FFB5A5"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "F8C7C2"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "A46A21"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "CF8933"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "EAA041"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "FFBC6B"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "FFD6A2"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "FFE6C7"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "AA8831"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, "D5AE49"

    const/16 v22, 0x13

    aput-object v2, v1, v22

    const-string v2, "F2C960"

    const/16 v15, 0x14

    aput-object v2, v1, v15

    const/16 v2, 0x15

    const-string v23, "FCDA83"

    aput-object v23, v1, v2

    const/16 v2, 0x16

    const-string v23, "FCE8B3"

    aput-object v23, v1, v2

    const/16 v2, 0x17

    const-string v23, "FEF1D1"

    aput-object v23, v1, v2

    const/16 v2, 0x18

    const-string v23, "076239"

    aput-object v23, v1, v2

    const/16 v2, 0x19

    const-string v23, "0B804B"

    aput-object v23, v1, v2

    const/16 v2, 0x1a

    const-string v23, "149E60"

    aput-object v23, v1, v2

    const/16 v2, 0x1b

    const-string v23, "44B984"

    aput-object v23, v1, v2

    const/16 v2, 0x1c

    const-string v23, "89D3B2"

    aput-object v23, v1, v2

    const/16 v2, 0x1d

    const-string v23, "B9E4D0"

    aput-object v23, v1, v2

    const/16 v2, 0x1e

    const-string v23, "1A764D"

    aput-object v23, v1, v2

    const/16 v2, 0x1f

    const-string v23, "2A9C68"

    aput-object v23, v1, v2

    const/16 v2, 0x20

    const-string v23, "3DC789"

    aput-object v23, v1, v2

    const/16 v2, 0x21

    const-string v23, "68DFA9"

    aput-object v23, v1, v2

    const/16 v2, 0x22

    const-string v23, "A0EAC9"

    aput-object v23, v1, v2

    const/16 v2, 0x23

    const-string v23, "C6F3DE"

    aput-object v23, v1, v2

    const/16 v2, 0x24

    const-string v23, "1C4587"

    aput-object v23, v1, v2

    const/16 v2, 0x25

    const-string v23, "285BAC"

    aput-object v23, v1, v2

    const/16 v2, 0x26

    const-string v23, "3C78D8"

    aput-object v23, v1, v2

    const/16 v2, 0x27

    const-string v23, "6D9EEB"

    aput-object v23, v1, v2

    const/16 v2, 0x28

    const-string v23, "A4C2F4"

    aput-object v23, v1, v2

    const/16 v2, 0x29

    const-string v23, "C9DAF8"

    aput-object v23, v1, v2

    const/16 v2, 0x2a

    const-string v23, "41236D"

    aput-object v23, v1, v2

    const/16 v2, 0x2b

    const-string v23, "653E9B"

    aput-object v23, v1, v2

    const/16 v2, 0x2c

    const-string v23, "8E63CE"

    aput-object v23, v1, v2

    const/16 v2, 0x2d

    const-string v23, "B694E8"

    aput-object v23, v1, v2

    const/16 v2, 0x2e

    const-string v23, "D0BCF1"

    aput-object v23, v1, v2

    const/16 v2, 0x2f

    const-string v23, "E4D7F5"

    aput-object v23, v1, v2

    const/16 v2, 0x30

    const-string v23, "83334C"

    aput-object v23, v1, v2

    const/16 v2, 0x31

    const-string v23, "B65775"

    aput-object v23, v1, v2

    const/16 v2, 0x32

    const-string v23, "E07798"

    aput-object v23, v1, v2

    const/16 v2, 0x33

    const-string v23, "F7A7C0"

    aput-object v23, v1, v2

    const/16 v2, 0x34

    const-string v23, "FBC8D9"

    aput-object v23, v1, v2

    const/16 v2, 0x35

    const-string v23, "FCDEE8"

    aput-object v23, v1, v2

    const/16 v2, 0x36

    const-string v23, "000000"

    aput-object v23, v1, v2

    const/16 v2, 0x37

    const-string v24, "434343"

    aput-object v24, v1, v2

    const/16 v2, 0x38

    const-string v24, "666666"

    aput-object v24, v1, v2

    const/16 v2, 0x39

    const-string v24, "999999"

    aput-object v24, v1, v2

    const/16 v2, 0x3a

    const-string v24, "CCCCCC"

    aput-object v24, v1, v2

    const/16 v2, 0x3b

    const-string v24, "FFFFFF"

    aput-object v24, v1, v2

    new-array v2, v9, [Ljava/lang/String;

    const-string v24, "FF0000"

    aput-object v24, v2, v3

    const-string v24, "FFFF00"

    aput-object v24, v2, v4

    const-string v24, "00FF00"

    aput-object v24, v2, v5

    const-string v24, "00FFFF"

    aput-object v24, v2, v6

    const-string v24, "0000FF"

    aput-object v24, v2, v7

    const-string v24, "FF00FF"

    aput-object v24, v2, v8

    new-array v15, v15, [Ljava/lang/String;

    const-string v24, "F44336"

    aput-object v24, v15, v3

    const-string v24, "E91E63"

    aput-object v24, v15, v4

    const-string v4, "9C27B0"

    aput-object v4, v15, v5

    const-string v4, "673AB7"

    aput-object v4, v15, v6

    const-string v4, "3F51B5"

    aput-object v4, v15, v7

    const-string v4, "2196F3"

    aput-object v4, v15, v8

    const-string v4, "03A9F4"

    aput-object v4, v15, v9

    const-string v4, "00BCD4"

    aput-object v4, v15, v10

    const-string v4, "009688"

    aput-object v4, v15, v11

    const-string v4, "4CAF50"

    aput-object v4, v15, v12

    const-string v4, "8BC34A"

    aput-object v4, v15, v13

    const-string v4, "CDDC39"

    aput-object v4, v15, v14

    const-string v4, "FFEB3B"

    const/16 v5, 0xc

    aput-object v4, v15, v5

    const-string v4, "FFC107"

    aput-object v4, v15, v16

    const-string v4, "FF9800"

    aput-object v4, v15, v17

    const-string v4, "FF5722"

    aput-object v4, v15, v18

    const-string v4, "795548"

    aput-object v4, v15, v19

    const-string v4, "9E9E9E"

    aput-object v4, v15, v20

    const-string v4, "607D8B"

    aput-object v4, v15, v21

    aput-object v23, v15, v22

    if-eqz p3, :cond_0

    move-object v1, v15

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move-object v1, v2

    .line 42
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    .line 43
    :goto_1
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 44
    iget-object v2, v0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/ColorPickerAdapter;->LayoutParams()V

    return-void
.end method

.method private LayoutParams()V
    .locals 3

    const-wide v0, 0x4052c00000000000L    # 75.0

    .line 51
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    .line 52
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/perm/kate/ColorPickerAdapter;->params:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/perm/kate/ColorPickerAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object p3, p0, Lcom/perm/kate/ColorPickerAdapter;->params:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 61
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    .line 62
    :goto_0
    iget-object p3, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 64
    iget-object p3, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
