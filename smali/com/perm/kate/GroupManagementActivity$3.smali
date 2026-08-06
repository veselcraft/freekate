.class Lcom/perm/kate/GroupManagementActivity$3;
.super Ljava/lang/Object;
.source "GroupManagementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupManagementActivity;->displayDataInUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagementActivity;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$3;->this$0:Lcom/perm/kate/GroupManagementActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupManagementActivity$3;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity$3;->this$0:Lcom/perm/kate/GroupManagementActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity$3;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupManagementActivity;->access$500(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
