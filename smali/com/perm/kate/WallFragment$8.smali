.class Lcom/perm/kate/WallFragment$8;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$wall_owner_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/perm/kate/WallFragment$8;->this$0:Lcom/perm/kate/WallFragment;

    iput-object p2, p0, Lcom/perm/kate/WallFragment$8;->val$post_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/WallFragment$8;->val$wall_owner_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 518
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/perm/kate/WallFragment$8$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/WallFragment$8$1;-><init>(Lcom/perm/kate/WallFragment$8;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 533
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
