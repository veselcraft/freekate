.class Lcom/perm/kate/WallPostActivity$13;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->updateLocation(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

.field final synthetic val$attachment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$13;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-object p2, p0, Lcom/perm/kate/WallPostActivity$13;->val$attachment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 908
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$13;->val$attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 911
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$13;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$2900(Lcom/perm/kate/WallPostActivity;)V

    return-void
.end method
