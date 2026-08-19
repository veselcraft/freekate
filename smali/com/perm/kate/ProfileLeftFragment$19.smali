.class Lcom/perm/kate/ProfileLeftFragment$19;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;

.field final synthetic val$counts:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;[Ljava/lang/Integer;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$19;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileLeftFragment$19;->val$counts:[Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 502
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$19;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$19;->val$counts:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileLeftFragment;->access$700(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V

    .line 503
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$19;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$19;->val$counts:[Ljava/lang/Integer;

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    invoke-static {v0, v2}, Lcom/perm/kate/ProfileLeftFragment;->access$800(Lcom/perm/kate/ProfileLeftFragment;I)V

    return-void
.end method
