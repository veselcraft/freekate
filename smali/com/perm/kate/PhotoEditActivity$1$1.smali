.class Lcom/perm/kate/PhotoEditActivity$1$1;
.super Ljava/lang/Thread;
.source "PhotoEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoEditActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoEditActivity$1;

.field final synthetic val$caption:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity$1;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->this$1:Lcom/perm/kate/PhotoEditActivity$1;

    iput-object p2, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->val$caption:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 51
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->this$1:Lcom/perm/kate/PhotoEditActivity$1;

    iget-object v1, v1, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoEditActivity;->access$100(Lcom/perm/kate/PhotoEditActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->this$1:Lcom/perm/kate/PhotoEditActivity$1;

    iget-object v2, v2, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {v2}, Lcom/perm/kate/PhotoEditActivity;->access$200(Lcom/perm/kate/PhotoEditActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->val$caption:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->this$1:Lcom/perm/kate/PhotoEditActivity$1;

    iget-object v5, v5, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-static {v5}, Lcom/perm/kate/PhotoEditActivity;->access$300(Lcom/perm/kate/PhotoEditActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/PhotoEditActivity$1$1;->this$1:Lcom/perm/kate/PhotoEditActivity$1;

    iget-object v6, v6, Lcom/perm/kate/PhotoEditActivity$1;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->photoEdit(Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
