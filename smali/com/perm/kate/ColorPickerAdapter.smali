.class public Lcom/perm/kate/ColorPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ColorPickerAdapter.java"


# instance fields
.field private colorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private params:Landroid/widget/AbsListView$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is_led"    # Z
    .param p3, "is_theme"    # Z

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/perm/kate/ColorPickerAdapter;->context:Landroid/content/Context;

    .line 21
    const/16 v5, 0x3c

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "822111"

    aput-object v5, v3, v7

    const-string v5, "AC2B16"

    aput-object v5, v3, v8

    const-string v5, "CC3A21"

    aput-object v5, v3, v9

    const-string v5, "E66550"

    aput-object v5, v3, v10

    const-string v5, "EFA093"

    aput-object v5, v3, v11

    const/4 v5, 0x5

    const-string v6, "F6C5BE"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "933211"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "BD3C16"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "DD4B21"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "F87855"

    aput-object v6, v3, v5

    const/16 v5, 0xa

    const-string v6, "FFB5A5"

    aput-object v6, v3, v5

    const/16 v5, 0xb

    const-string v6, "F8C7C2"

    aput-object v6, v3, v5

    const/16 v5, 0xc

    const-string v6, "A46A21"

    aput-object v6, v3, v5

    const/16 v5, 0xd

    const-string v6, "CF8933"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    const-string v6, "EAA041"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    const-string v6, "FFBC6B"

    aput-object v6, v3, v5

    const/16 v5, 0x10

    const-string v6, "FFD6A2"

    aput-object v6, v3, v5

    const/16 v5, 0x11

    const-string v6, "FFE6C7"

    aput-object v6, v3, v5

    const/16 v5, 0x12

    const-string v6, "AA8831"

    aput-object v6, v3, v5

    const/16 v5, 0x13

    const-string v6, "D5AE49"

    aput-object v6, v3, v5

    const/16 v5, 0x14

    const-string v6, "F2C960"

    aput-object v6, v3, v5

    const/16 v5, 0x15

    const-string v6, "FCDA83"

    aput-object v6, v3, v5

    const/16 v5, 0x16

    const-string v6, "FCE8B3"

    aput-object v6, v3, v5

    const/16 v5, 0x17

    const-string v6, "FEF1D1"

    aput-object v6, v3, v5

    const/16 v5, 0x18

    const-string v6, "076239"

    aput-object v6, v3, v5

    const/16 v5, 0x19

    const-string v6, "0B804B"

    aput-object v6, v3, v5

    const/16 v5, 0x1a

    const-string v6, "149E60"

    aput-object v6, v3, v5

    const/16 v5, 0x1b

    const-string v6, "44B984"

    aput-object v6, v3, v5

    const/16 v5, 0x1c

    const-string v6, "89D3B2"

    aput-object v6, v3, v5

    const/16 v5, 0x1d

    const-string v6, "B9E4D0"

    aput-object v6, v3, v5

    const/16 v5, 0x1e

    const-string v6, "1A764D"

    aput-object v6, v3, v5

    const/16 v5, 0x1f

    const-string v6, "2A9C68"

    aput-object v6, v3, v5

    const/16 v5, 0x20

    const-string v6, "3DC789"

    aput-object v6, v3, v5

    const/16 v5, 0x21

    const-string v6, "68DFA9"

    aput-object v6, v3, v5

    const/16 v5, 0x22

    const-string v6, "A0EAC9"

    aput-object v6, v3, v5

    const/16 v5, 0x23

    const-string v6, "C6F3DE"

    aput-object v6, v3, v5

    const/16 v5, 0x24

    const-string v6, "1C4587"

    aput-object v6, v3, v5

    const/16 v5, 0x25

    const-string v6, "285BAC"

    aput-object v6, v3, v5

    const/16 v5, 0x26

    const-string v6, "3C78D8"

    aput-object v6, v3, v5

    const/16 v5, 0x27

    const-string v6, "6D9EEB"

    aput-object v6, v3, v5

    const/16 v5, 0x28

    const-string v6, "A4C2F4"

    aput-object v6, v3, v5

    const/16 v5, 0x29

    const-string v6, "C9DAF8"

    aput-object v6, v3, v5

    const/16 v5, 0x2a

    const-string v6, "41236D"

    aput-object v6, v3, v5

    const/16 v5, 0x2b

    const-string v6, "653E9B"

    aput-object v6, v3, v5

    const/16 v5, 0x2c

    const-string v6, "8E63CE"

    aput-object v6, v3, v5

    const/16 v5, 0x2d

    const-string v6, "B694E8"

    aput-object v6, v3, v5

    const/16 v5, 0x2e

    const-string v6, "D0BCF1"

    aput-object v6, v3, v5

    const/16 v5, 0x2f

    const-string v6, "E4D7F5"

    aput-object v6, v3, v5

    const/16 v5, 0x30

    const-string v6, "83334C"

    aput-object v6, v3, v5

    const/16 v5, 0x31

    const-string v6, "B65775"

    aput-object v6, v3, v5

    const/16 v5, 0x32

    const-string v6, "E07798"

    aput-object v6, v3, v5

    const/16 v5, 0x33

    const-string v6, "F7A7C0"

    aput-object v6, v3, v5

    const/16 v5, 0x34

    const-string v6, "FBC8D9"

    aput-object v6, v3, v5

    const/16 v5, 0x35

    const-string v6, "FCDEE8"

    aput-object v6, v3, v5

    const/16 v5, 0x36

    const-string v6, "000000"

    aput-object v6, v3, v5

    const/16 v5, 0x37

    const-string v6, "434343"

    aput-object v6, v3, v5

    const/16 v5, 0x38

    const-string v6, "666666"

    aput-object v6, v3, v5

    const/16 v5, 0x39

    const-string v6, "999999"

    aput-object v6, v3, v5

    const/16 v5, 0x3a

    const-string v6, "CCCCCC"

    aput-object v6, v3, v5

    const/16 v5, 0x3b

    const-string v6, "FFFFFF"

    aput-object v6, v3, v5

    .line 33
    .local v3, "paint_colors":[Ljava/lang/String;
    const/4 v5, 0x6

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "FF0000"

    aput-object v5, v2, v7

    const-string v5, "FFFF00"

    aput-object v5, v2, v8

    const-string v5, "00FF00"

    aput-object v5, v2, v9

    const-string v5, "00FFFF"

    aput-object v5, v2, v10

    const-string v5, "0000FF"

    aput-object v5, v2, v11

    const/4 v5, 0x5

    const-string v6, "FF00FF"

    aput-object v6, v2, v5

    .line 34
    .local v2, "led_colors":[Ljava/lang/String;
    const/16 v5, 0x14

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "F44336"

    aput-object v5, v4, v7

    const-string v5, "E91E63"

    aput-object v5, v4, v8

    const-string v5, "9C27B0"

    aput-object v5, v4, v9

    const-string v5, "673AB7"

    aput-object v5, v4, v10

    const-string v5, "3F51B5"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "2196F3"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "03A9F4"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "00BCD4"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "009688"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "4CAF50"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "8BC34A"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "CDDC39"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "FFEB3B"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "FFC107"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "FF9800"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "FF5722"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "795548"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "9E9E9E"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "607D8B"

    aput-object v6, v4, v5

    const/16 v5, 0x13

    const-string v6, "000000"

    aput-object v6, v4, v5

    .line 41
    .local v4, "theme_colors":[Ljava/lang/String;
    if-eqz p3, :cond_0

    move-object v0, v4

    .line 42
    .local v0, "colors":[Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 44
    iget-object v5, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v0    # "colors":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 46
    .restart local v0    # "colors":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/ColorPickerAdapter;->LayoutParams()V

    .line 47
    return-void
.end method

.method private LayoutParams()V
    .locals 4

    .prologue
    .line 51
    const-wide v2, 0x4052c00000000000L    # 75.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    .line 52
    .local v0, "height":I
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/perm/kate/ColorPickerAdapter;->params:Landroid/widget/AbsListView$LayoutParams;

    .line 53
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/ColorPickerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/perm/kate/ColorPickerAdapter;->params:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 64
    iget-object v1, p0, Lcom/perm/kate/ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    return-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 61
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    goto :goto_0
.end method
