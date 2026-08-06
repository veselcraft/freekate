.class Lcom/perm/kate/AlbumsFragment$3;
.super Ljava/lang/Object;
.source "AlbumsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$3;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v0}, Lcom/perm/kate/AlbumsFragment;->access$200(Lcom/perm/kate/AlbumsFragment;)V

    .line 128
    return-void
.end method
