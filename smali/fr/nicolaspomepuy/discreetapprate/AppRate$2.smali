.class Lfr/nicolaspomepuy/discreetapprate/AppRate$2;
.super Ljava/lang/Object;
.source "AppRate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

.field final synthetic val$mainView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iput-object p2, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->val$mainView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 441
    :try_start_0
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$200(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {v3}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$200(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 442
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    iget-object v0, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->val$mainView:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$000(Lfr/nicolaspomepuy/discreetapprate/AppRate;Landroid/view/ViewGroup;)V

    .line 443
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$300(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "clicked"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$300(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 445
    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfr/nicolaspomepuy/discreetapprate/AppRate$2;->this$0:Lfr/nicolaspomepuy/discreetapprate/AppRate;

    invoke-static {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate;->access$100(Lfr/nicolaspomepuy/discreetapprate/AppRate;)Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;

    move-result-object p1

    invoke-interface {p1}, Lfr/nicolaspomepuy/discreetapprate/AppRate$OnShowListener;->onRateAppClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
