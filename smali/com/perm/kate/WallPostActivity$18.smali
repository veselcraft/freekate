.class Lcom/perm/kate/WallPostActivity$18;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

.field final synthetic val$attachment:Ljava/lang/String;

.field final synthetic val$uploaded_photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$18;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$18;->val$attachment:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/WallPostActivity$18;->val$uploaded_photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1098
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$18;->val$attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$18;->val$uploaded_photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 1102
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$18;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2900(Lcom/perm/kate/WallPostActivity;)V

    return-void
.end method
