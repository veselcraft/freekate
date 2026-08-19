.class Lcom/perm/kate/WallMessageActivity$20;
.super Lcom/perm/kate/session/Callback;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->lambda$addToFaves$0(Ljava/lang/Long;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$20;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 859
    check-cast p1, Ljava/lang/Boolean;

    .line 860
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 861
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$20;->this$0:Lcom/perm/kate/WallMessageActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method
