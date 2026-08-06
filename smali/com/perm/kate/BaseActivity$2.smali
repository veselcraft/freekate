.class Lcom/perm/kate/BaseActivity$2;
.super Lcom/perm/kate/BaseActivity$MyAdListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BaseActivity;->initYandexAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$2;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Lcom/perm/kate/BaseActivity$MyAdListener;-><init>()V

    return-void
.end method
