.class Lcom/perm/kate/GroupBanActivity$3;
.super Ljava/lang/Object;
.source "GroupBanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBanActivity;->displayBanInfoInUi(Lcom/perm/kate/api/GroupBanItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBanActivity;

.field final synthetic val$banItem:Lcom/perm/kate/api/GroupBanItem;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$3;->this$0:Lcom/perm/kate/GroupBanActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupBanActivity$3;->val$banItem:Lcom/perm/kate/api/GroupBanItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$3;->this$0:Lcom/perm/kate/GroupBanActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$3;->val$banItem:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupBanActivity;->access$300(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V

    .line 114
    return-void
.end method
