.class Lcom/perm/kate/ProfileFragment$6;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileFragment;->displayWallCountInUiThread(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$wall_count:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$6;->this$0:Lcom/perm/kate/ProfileFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment$6;->val$wall_count:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$6;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$6;->val$wall_count:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$1500(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V

    .line 706
    return-void
.end method
