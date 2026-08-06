.class Lcom/perm/kate/AlbumCommentsActivity$11;
.super Ljava/lang/Object;
.source "AlbumCommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$1300(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 297
    return-void
.end method
