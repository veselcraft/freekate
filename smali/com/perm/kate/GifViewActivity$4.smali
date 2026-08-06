.class Lcom/perm/kate/GifViewActivity$4;
.super Ljava/lang/Object;
.source "GifViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity;->displayInUIThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$4;->this$0:Lcom/perm/kate/GifViewActivity;

    iput-boolean p2, p0, Lcom/perm/kate/GifViewActivity$4;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/perm/kate/GifViewActivity$4;->this$0:Lcom/perm/kate/GifViewActivity;

    iget-boolean v1, p0, Lcom/perm/kate/GifViewActivity$4;->val$success:Z

    invoke-static {v0, v1}, Lcom/perm/kate/GifViewActivity;->access$800(Lcom/perm/kate/GifViewActivity;Z)V

    .line 199
    return-void
.end method
