.class Lcom/perm/kate/PopupActivity$4;
.super Ljava/lang/Object;
.source "PopupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PopupActivity;->updateHeaderInUiThread()V
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

    .line 218
    iput-object p1, p0, Lcom/perm/kate/PopupActivity$4;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$4;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0}, Lcom/perm/kate/PopupActivity;->access$300(Lcom/perm/kate/PopupActivity;)V

    return-void
.end method
