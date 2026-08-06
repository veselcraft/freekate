.class Lcom/perm/kate/ProfileLeftFragment$20;
.super Ljava/lang/Object;
.source "ProfileLeftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileLeftFragment;->displayWallCountInUiThread(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileLeftFragment;

.field final synthetic val$wall_count:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment$20;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileLeftFragment$20;->val$wall_count:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment$20;->this$0:Lcom/perm/kate/ProfileLeftFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment$20;->val$wall_count:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileLeftFragment;->access$600(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V

    .line 517
    return-void
.end method
