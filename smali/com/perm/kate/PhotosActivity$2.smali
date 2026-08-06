.class Lcom/perm/kate/PhotosActivity$2;
.super Ljava/lang/Thread;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotosActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v2, v2, Lcom/perm/kate/PhotosActivity;->callback:Lcom/perm/kate/session/Callback;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/PhotosActivity;->access$100(Lcom/perm/kate/PhotosActivity;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;)V

    .line 179
    return-void
.end method
