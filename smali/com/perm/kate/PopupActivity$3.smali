.class Lcom/perm/kate/PopupActivity$3;
.super Ljava/lang/Object;
.source "PopupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PopupActivity;->getUserInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PopupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PopupActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/perm/kate/PopupActivity$3;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/perm/kate/PopupActivity$3;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v1}, Lcom/perm/kate/PopupActivity;->access$100(Lcom/perm/kate/PopupActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 210
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$3;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0}, Lcom/perm/kate/PopupActivity;->access$200(Lcom/perm/kate/PopupActivity;)V

    return-void
.end method
