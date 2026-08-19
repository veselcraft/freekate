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

    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 17
    iput-object v0, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    .line 21
    iput-object p1, p0, Lcom/perm/kate/FilesAdapter;->mContext:Landroid/app/Activity;

    .line 22
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/FilesAdapter;->isLightTheme:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/perm/kate/FilesAdapter;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public displayNewData([Ljava/io/File;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    .line 67
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/perm/kate/FilesAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c007a

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090204

    .line 45
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f090239

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090171

    .line 47
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 48
    iget-object v3, p0, Lcom/perm/kate/FilesAdapter;->files:[Ljava/io/File;

    aget-object p1, v3, p1

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_2

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-boolean p1, p0, Lcom/perm/kate/FilesAdapter;->isLightTheme:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0801f1

    goto :goto_0

    :cond_1
    const p1, 0x7f0801f2

    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 55
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-boolean p1, p0, Lcom/perm/kate/FilesAdapter;->isLightTheme:Z

    if-eqz p1, :cond_3

    const p1, 0x7f0801f3

    goto :goto_1

    :cond_3
    const p1, 0x7f0801f4

    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-object p2
.end method
