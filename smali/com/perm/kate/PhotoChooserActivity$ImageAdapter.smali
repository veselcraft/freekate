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

    .line 94
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const-string p2, "layout_inflater"

    .line 96
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const-string p1, "_id"

    .line 97
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->id_column_index:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;

    .line 104
    iget p2, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->id_column_index:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x1

    .line 105
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 107
    iget-object v2, p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->imageview:Landroid/widget/ImageView;

    invoke-static {v2, p2, v1}, Lcom/perm/kate/PhotoChooserActivity;->displayImageInThread(Landroid/widget/ImageView;II)V

    .line 109
    iget-object v1, p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoChooserActivity;->access$000(Lcom/perm/kate/PhotoChooserActivity;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v1, p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0265

    invoke-virtual {v1, v2}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    iget-object p3, p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p1, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->imageview:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .line 136
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0c00ea

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 120
    new-instance p2, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;

    invoke-direct {p2}, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;-><init>()V

    const p3, 0x7f090338

    .line 121
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->imageview:Landroid/widget/ImageView;

    const p3, 0x7f09018d

    .line 122
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p2, Lcom/perm/kate/PhotoChooserActivity$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f0900b7

    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    iget-object v1, v1, Lcom/perm/kate/PhotoChooserActivity;->checkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object p2, p0, Lcom/perm/kate/PhotoChooserActivity$ImageAdapter;->this$0:Lcom/perm/kate/PhotoChooserActivity;

    iget-object p2, p2, Lcom/perm/kate/PhotoChooserActivity;->openClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
