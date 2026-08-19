.class Lcom/perm/kate/StoriesActivity$7;
.super Ljava/lang/Object;
.source "StoriesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 270
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object p1, p1, Lcom/perm/kate/StoriesActivity;->games:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Story;

    .line 271
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    sget-object p3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    .line 273
    iget-wide v0, p1, Lcom/perm/kate/api/Story;->owner_id:J

    cmp-long p5, v0, p3

    if-nez p5, :cond_0

    .line 274
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f00ba

    const/4 v1, 0x3

    invoke-direct {p5, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    iget-wide v0, p1, Lcom/perm/kate/api/Story;->owner_id:J

    cmp-long p5, v0, p3

    if-nez p5, :cond_1

    .line 276
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f02f5

    const/4 p5, 0x4

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_1
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f02ba

    const/4 p5, 0x5

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_2

    return p4

    .line 281
    :cond_2
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/StoriesActivity$7;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-direct {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v0, Lcom/perm/kate/StoriesActivity$7$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/StoriesActivity$7$1;-><init>(Lcom/perm/kate/StoriesActivity$7;Ljava/util/ArrayList;Lcom/perm/kate/api/Story;)V

    invoke-virtual {p3, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 316
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p4
.end method
