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

    .line 115
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 118
    iget-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/PhotoDetailsActivity;->access$100(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$1;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoDetailsActivity;->access$000(Lcom/perm/kate/PhotoDetailsActivity;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$200(Lcom/perm/kate/PhotoDetailsActivity;J)V

    :cond_1
    :goto_0
    return-void
.end method
