.class Lcom/perm/kate/AlbumsFragment$7;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;

.field final synthetic val$aid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$7;->this$0:Lcom/perm/kate/AlbumsFragment;

    iput-wide p2, p0, Lcom/perm/kate/AlbumsFragment$7;->val$aid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 311
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$7;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-wide v0, p0, Lcom/perm/kate/AlbumsFragment$7;->val$aid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/AlbumsFragment;->access$1100(Lcom/perm/kate/AlbumsFragment;J)V

    return-void
.end method
