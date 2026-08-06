.class Lcom/perm/kate/SyncSelectionActivity$2;
.super Ljava/lang/Thread;
.source "SyncSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SyncSelectionActivity;->getFriendsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncSelectionActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$2;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity$2;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v3}, Lcom/perm/kate/SyncSelectionActivity;->access$300(Lcom/perm/kate/SyncSelectionActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/SyncSelectionActivity$2;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 85
    return-void
.end method
