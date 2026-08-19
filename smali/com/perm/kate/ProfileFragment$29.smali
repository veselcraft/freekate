.class Lcom/perm/kate/ProfileFragment$29;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$29;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1477
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$29;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v0, "add_friend"

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 1478
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$29;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object p1, p1, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->isFriend(Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1479
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$29;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$3200(Lcom/perm/kate/ProfileFragment;)V

    goto :goto_0

    .line 1481
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$29;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$3300(Lcom/perm/kate/ProfileFragment;)V

    :goto_0
    return-void
.end method
