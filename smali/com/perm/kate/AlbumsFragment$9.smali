.class Lcom/perm/kate/AlbumsFragment$9;
.super Lcom/perm/kate/session/Callback;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$9;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 256
    return-void
.end method
