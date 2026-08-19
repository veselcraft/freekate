.class Lcom/perm/kate/NewCommentActivity$19;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->createGroupsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$groups:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$19;->val$groups:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$19;->val$groups:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/Group;

    iget-wide v1, p2, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :goto_0
    invoke-static {v0, p2}, Lcom/perm/kate/NewCommentActivity;->access$802(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 723
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
