.class Lcom/perm/kate/ProfileFragment$5;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$counts:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;[Ljava/lang/Integer;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$5;->this$0:Lcom/perm/kate/ProfileFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment$5;->val$counts:[Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 708
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$5;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$5;->val$counts:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$1600(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V

    .line 709
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$5;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$5;->val$counts:[Ljava/lang/Integer;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->access$1700(Lcom/perm/kate/ProfileFragment;I)V

    return-void
.end method
