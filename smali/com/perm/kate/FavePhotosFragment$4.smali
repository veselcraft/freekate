.class Lcom/perm/kate/FavePhotosFragment$4;
.super Ljava/lang/Object;
.source "FavePhotosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FavePhotosFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePhotosFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$4;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$4;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$600(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 128
    return-void
.end method
