.class Lcom/perm/kate/PhotosActivity$14;
.super Ljava/lang/Thread;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->movePhotos(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;

.field final synthetic val$idsPairs:Ljava/util/ArrayList;

.field final synthetic val$target_album_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;J)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iput-object p2, p0, Lcom/perm/kate/PhotosActivity$14;->val$idsPairs:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/PhotosActivity$14;->val$target_album_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 730
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$14;->val$idsPairs:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity$14;->val$target_album_id:J

    iget-object v5, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v4, v5, Lcom/perm/kate/PhotosActivity;->callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->movePhotos(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
