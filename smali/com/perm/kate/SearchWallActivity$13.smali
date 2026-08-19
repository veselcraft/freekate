.class Lcom/perm/kate/SearchWallActivity$13;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->removePost(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$wall_owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$13;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchWallActivity$13;->val$post_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/SearchWallActivity$13;->val$wall_owner_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 466
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/perm/kate/SearchWallActivity$13$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/SearchWallActivity$13$1;-><init>(Lcom/perm/kate/SearchWallActivity$13;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 480
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
