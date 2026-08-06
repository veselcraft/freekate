.class Lcom/perm/kate/DocClickHelper$3;
.super Lcom/perm/kate/session/Callback;
.source "DocClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DocClickHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocClickHelper;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$3;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 123
    return-void
.end method
