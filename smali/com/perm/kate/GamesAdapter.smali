.class public Lcom/perm/kate/GamesAdapter;
.super Landroid/widget/BaseAdapter;
.source "GamesAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Game;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 3
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Game;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "_items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Game;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/GamesAdapter;->items:Ljava/util/ArrayList;

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Game;

    .line 24
    .local v0, "item":Lcom/perm/kate/api/Game;
    iget-object v2, p0, Lcom/perm/kate/GamesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    .end local v0    # "item":Lcom/perm/kate/api/Game;
    :cond_0
    iput-object p2, p0, Lcom/perm/kate/GamesAdapter;->activity:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/GamesAdapter;->activity:Landroid/app/Activity;

    .line 89
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/GamesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/perm/kate/GamesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GamesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/GamesAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 45
    const-wide/16 v0, -0x1

    .line 46
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/perm/kate/GamesAdapter;->activity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 54
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03007f

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 57
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .local v14, "vi":Landroid/view/View;
    :goto_0
    const v1, 0x7f0e01b4

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 58
    .local v3, "img_game_icon":Landroid/widget/ImageView;
    const v1, 0x7f0e00b6

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 59
    .local v13, "tv_title":Landroid/widget/TextView;
    const v1, 0x7f0e01b5

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 60
    .local v11, "tv_genre":Landroid/widget/TextView;
    const v1, 0x7f0e01b7

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 61
    .local v10, "tv_friends":Landroid/widget/TextView;
    const v1, 0x7f0e01b6

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 62
    .local v12, "tv_members":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/GamesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/Game;

    .line 63
    .local v8, "g":Lcom/perm/kate/api/Game;
    if-eqz v8, :cond_2

    .line 64
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/api/Game;->icon_200:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    const v6, 0x7f020143

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 65
    iget-object v1, v8, Lcom/perm/kate/api/Game;->title:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, v8, Lcom/perm/kate/api/Game;->genre:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/GamesAdapter;->activity:Landroid/app/Activity;

    const v4, 0x7f0701cc

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/api/Game;->members_count:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v8, Lcom/perm/kate/api/Game;->friends:[J

    if-eqz v1, :cond_1

    iget-object v1, v8, Lcom/perm/kate/api/Game;->friends:[J

    array-length v1, v1

    if-lez v1, :cond_1

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/GamesAdapter;->activity:Landroid/app/Activity;

    const v4, 0x7f0701aa

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/api/Game;->friends:[J

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_1
    iget-object v1, v8, Lcom/perm/kate/api/Game;->platform_id:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_2
    return-object v14

    .line 56
    .end local v3    # "img_game_icon":Landroid/widget/ImageView;
    .end local v8    # "g":Lcom/perm/kate/api/Game;
    .end local v10    # "tv_friends":Landroid/widget/TextView;
    .end local v11    # "tv_genre":Landroid/widget/TextView;
    .end local v12    # "tv_members":Landroid/widget/TextView;
    .end local v13    # "tv_title":Landroid/widget/TextView;
    .end local v14    # "vi":Landroid/view/View;
    :cond_0
    move-object/from16 v14, p2

    .restart local v14    # "vi":Landroid/view/View;
    goto/16 :goto_0

    .line 72
    .restart local v3    # "img_game_icon":Landroid/widget/ImageView;
    .restart local v8    # "g":Lcom/perm/kate/api/Game;
    .restart local v10    # "tv_friends":Landroid/widget/TextView;
    .restart local v11    # "tv_genre":Landroid/widget/TextView;
    .restart local v12    # "tv_members":Landroid/widget/TextView;
    .restart local v13    # "tv_title":Landroid/widget/TextView;
    :cond_1
    const-string v1, ""

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_2
    const-string v1, ""

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const-string v1, ""

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v1, ""

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v1, ""

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v1, 0x7f020143

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method
