.class Lcom/perm/kate/PhotoViewerActrivity$11;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagsUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$11;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$11;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1800(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    .line 851
    return-void
.end method
