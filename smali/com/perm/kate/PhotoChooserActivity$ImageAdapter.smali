.class public Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;
.super Landroid/widget/CursorAdapter;
.source "PhotoChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field id_column_index:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/perm/kate/PhotoChooserActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/PhotoChooserActivity;Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/PhotoChooserActivity;
    .param p2, "a"    # Landroid/app/Activity;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    .line 96
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/perm/kate/PhotoChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    const-string v0, "_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->id_column_index:I

    .line 99
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;

    .line 105
    .local v0, "holder":Lcom/perm/kate/PhotoChooserActivity$ViewHolder;
    iget v3, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->id_column_index:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 106
    .local v1, "id":I
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 108
    .local v2, "rotate":I
    iget-object v3, v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->imageview:Landroid/widget/ImageView;

    invoke-static {v3, v1, v2}, Lcom/perm/kate/PhotoChooserActivity;->displayImageInThread(Landroid/widget/ImageView;II)V

    .line 110
    iget-object v3, v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object v3, v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300d0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;

    invoke-direct {v0}, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;-><init>()V

    .line 119
    .local v0, "holder":Lcom/perm/kate/PhotoChooserActivity$ViewHolder;
    const v2, 0x7f0e027f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->imageview:Landroid/widget/ImageView;

    .line 120
    const v2, 0x7f0e0281

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 121
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    iget-object v2, v2, Lcom/perm/kate/PhotoChooserActivity;->checkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-object v1
.end method
