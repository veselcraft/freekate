.class Lcom/perm/kate/FavePhotosFragment$4;
.super Ljava/lang/Object;
.source "FavePhotosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$4;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$4;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$600(Lcom/perm/kate/FavePhotosFragment;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
