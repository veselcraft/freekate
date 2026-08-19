.class Lcom/perm/kate/WallPostActivity$5;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->createAttachAudioDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$5;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 582
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$5;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/perm/kate/WallPostActivity;->access$1700(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/WallPostActivity;->access$1800(Lcom/perm/kate/WallPostActivity;Z)V

    goto :goto_0

    .line 584
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$5;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/WallPostActivity;->access$1700(Lcom/perm/kate/WallPostActivity;Z)V

    :goto_0
    return-void
.end method
