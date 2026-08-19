.class Lcom/perm/kate/GiftsFragment$3;
.super Ljava/lang/Object;
.source "GiftsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$3;->this$0:Lcom/perm/kate/GiftsFragment;

    iput-object p2, p0, Lcom/perm/kate/GiftsFragment$3;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/perm/kate/GiftsFragment$3;->this$0:Lcom/perm/kate/GiftsFragment;

    iget-object v1, p0, Lcom/perm/kate/GiftsFragment$3;->val$items:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/GiftsFragment;->access$600(Lcom/perm/kate/GiftsFragment;Ljava/util/ArrayList;)V

    return-void
.end method
