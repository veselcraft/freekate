.class Lcom/perm/kate/PhotosActivity$8;
.super Ljava/lang/Thread;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->deletePhotos(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;

.field final synthetic val$idsPairs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$8;->val$idsPairs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 521
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->val$idsPairs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v3, v2, Lcom/perm/kate/PhotosActivity;->callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v1, v3, v2}, Lcom/perm/kate/session/Session;->deletePhotos(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
