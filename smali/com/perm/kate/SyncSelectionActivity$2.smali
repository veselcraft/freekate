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

    .line 81
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$2;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 84
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/SyncSelectionActivity$2;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v1}, Lcom/perm/kate/SyncSelectionActivity;->access$300(Lcom/perm/kate/SyncSelectionActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SyncSelectionActivity$2;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
