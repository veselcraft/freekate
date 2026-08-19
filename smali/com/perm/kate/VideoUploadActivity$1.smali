.class Lcom/perm/kate/VideoUploadActivity$1;
.super Ljava/lang/Thread;
.source "VideoUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoUploadActivity;->downloadFriendListsForPrivacy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoUploadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$1;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$1;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->checkFriendsLists(Lcom/perm/kate/BaseActivity;)V

    .line 106
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity$1;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoUploadActivity;->access$000(Lcom/perm/kate/VideoUploadActivity;)V

    return-void
.end method
