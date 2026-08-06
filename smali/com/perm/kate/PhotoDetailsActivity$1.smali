.class Lcom/perm/kate/PhotoDetailsActivity$1;
.super Ljava/lang/Object;
.source "PhotoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$100(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/PhotoDetailsActivity;->access$200(Lcom/perm/kate/PhotoDetailsActivity;J)V

    goto :goto_0
.end method
