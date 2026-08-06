.class Lcom/perm/kate/WallMessageActivity$19;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->removePost(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$wall_owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$19;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/WallMessageActivity$19;->val$post_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/WallMessageActivity$19;->val$wall_owner_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 736
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/WallMessageActivity$19$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageActivity$19$1;-><init>(Lcom/perm/kate/WallMessageActivity$19;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 750
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 751
    return-void
.end method
