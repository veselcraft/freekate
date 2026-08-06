.class public Lcom/perm/kate/FilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilesAdapter.java"


# instance fields
.field private files:[Ljava/io/File;

.field private isLightTheme:Z

.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    .line 21
    iput-object p1, p0, Lcom/perm/kate/FilesAdapter;->mContext:Landroid/app/Activity;

    .line 22
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FilesAdapter;->isLightTheme:Z

    .line 23
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/FilesAdapter;->mContext:Landroid/app/Activity;

    .line 63
    return-void
.end method

.method public displayNewData([Ljava/io/File;)V
    .locals 0
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/FilesAdapter;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 42
    move-object v4, p2

    .line 43
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_0

    .line 44
    iget-object v5, p0, Lcom/perm/kate/FilesAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030070

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 45
    :cond_0
    const v5, 0x7f0e0197

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, "text1":Landroid/widget/TextView;
    const v5, 0x7f0e0198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    .local v3, "text2":Landroid/widget/TextView;
    const v5, 0x7f0e004a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .local v1, "image":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    aget-object v0, v5, p1

    .line 49
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-boolean v5, p0, Lcom/perm/kate/FilesAdapter;->isLightTheme:Z

    if-eqz v5, :cond_1

    const v5, 0x7f020132

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    :goto_1
    return-object v4

    .line 53
    :cond_1
    const v5, 0x7f020133

    goto :goto_0

    .line 55
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-boolean v5, p0, Lcom/perm/kate/FilesAdapter;->isLightTheme:Z

    if-eqz v5, :cond_3

    const v5, 0x7f020134

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const v5, 0x7f020135

    goto :goto_2
.end method
