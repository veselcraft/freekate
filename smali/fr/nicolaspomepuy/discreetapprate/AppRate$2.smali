.class Lfr/nicolaspomepuy/discreetapprate/AppRate$2;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/nicolaspomepuy/discreetapprate/AppRate;->showAppRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lfr/nicolaspomepuy/discreetapprate/AppRate;

    .prologue
    .line 435
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$200(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v5}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$200(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 440
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iget-object v2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->val$mainView:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$000(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    .line 441
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$300(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clicked"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 442
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$300(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object v1

    invoke-interface {v1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;->onRateAppClicked()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
