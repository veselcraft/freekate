.class Lcom/perm/kate/VideoDetailsActivity$6;
.super Ljava/lang/Object;
.source "VideoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$6;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity$6;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoDetailsActivity;->access$500(Lcom/perm/kate/VideoDetailsActivity;)V

    .line 173
    return-void
.end method
