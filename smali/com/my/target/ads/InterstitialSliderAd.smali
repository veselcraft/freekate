.class public Lcom/my/target/ads/InterstitialSliderAd;
.super Lcom/my/target/core/facades/a;
.source "InterstitialSliderAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;
    }
.end annotation


# instance fields
.field private ad:Lcom/my/target/core/facades/c;

.field private adDialog:Lcom/my/target/core/ui/a;

.field private final adListener:Lcom/my/target/core/facades/c$a;

.field private final dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private hideStatusBarInDialog:Z

.field private listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 117
    const-string v0, "fullscreenslider"

    invoke-direct {p0, p1, v0, p2}, Lcom/my/target/core/facades/a;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/my/target/ads/InterstitialSliderAd$1;

    invoke-direct {v0, p0}, Lcom/my/target/ads/InterstitialSliderAd$1;-><init>(Lcom/my/target/ads/InterstitialSliderAd;)V

    iput-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adListener:Lcom/my/target/core/facades/c$a;

    .line 76
    new-instance v0, Lcom/my/target/ads/InterstitialSliderAd$2;

    invoke-direct {v0, p0}, Lcom/my/target/ads/InterstitialSliderAd$2;-><init>(Lcom/my/target/ads/InterstitialSliderAd;)V

    iput-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->hideStatusBarInDialog:Z

    .line 118
    const-string v0, "InterstitialSliderAd created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/my/target/ads/InterstitialSliderAd;)Lcom/my/target/core/ui/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    return-object v0
.end method

.method static synthetic access$102(Lcom/my/target/ads/InterstitialSliderAd;Lcom/my/target/core/ui/a;)Lcom/my/target/core/ui/a;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    return-object p1
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 26
    sput-boolean p0, Lcom/my/target/core/b;->a:Z

    .line 27
    if-eqz p0, :cond_0

    .line 28
    const-string v0, "Debug mode enabled"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/my/target/ads/InterstitialSliderAd;->dismiss()V

    .line 189
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c;->a(Lcom/my/target/core/facades/c$a;)V

    .line 193
    iput-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    .line 195
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.my.target.ACTION_CLOSE_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->dismiss()V

    .line 184
    :cond_0
    return-void
.end method

.method public isHideStatusBarInDialog()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->hideStatusBarInDialog:Z

    return v0
.end method

.method protected onLoad(Lcom/my/target/core/models/c;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/my/target/core/factories/d;->a(Lcom/my/target/core/models/c;Landroid/content/Context;)Lcom/my/target/core/facades/c;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    .line 201
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    const-string v1, "No ad"

    invoke-interface {v0, v1, p0}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->adListener:Lcom/my/target/core/facades/c$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/facades/c;->a(Lcom/my/target/core/facades/c$a;)V

    .line 208
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0}, Lcom/my/target/core/facades/c;->load()V

    goto :goto_0
.end method

.method protected onLoadError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/InterstitialSliderAd;)V

    .line 216
    :cond_0
    return-void
.end method

.method public setHideStatusBarInDialog(Z)V
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/my/target/ads/InterstitialSliderAd;->hideStatusBarInDialog:Z

    .line 108
    return-void
.end method

.method public setListener(Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/my/target/ads/InterstitialSliderAd;->listener:Lcom/my/target/ads/InterstitialSliderAd$InterstitialSliderAdListener;

    .line 113
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0}, Lcom/my/target/core/facades/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    const-string v0, "InterstitialSliderAd.show: No ad"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    sput-object v0, Lcom/my/target/ads/MyTargetActivity;->ad:Lcom/my/target/core/facades/g;

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    const-class v2, Lcom/my/target/ads/MyTargetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "com.my.target.actions.interstitial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 135
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "InterstitialSliderAd.showDialog: dialog already showing"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    invoke-interface {v0}, Lcom/my/target/core/facades/c;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    :cond_2
    const-string v0, "InterstitialSliderAd.showDialog: No ad"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    new-instance v0, Lcom/my/target/core/ui/a;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    iget-boolean v2, p0, Lcom/my/target/ads/InterstitialSliderAd;->hideStatusBarInDialog:Z

    iget-object v3, p0, Lcom/my/target/ads/InterstitialSliderAd;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/my/target/core/ui/a;-><init>(Lcom/my/target/core/facades/g;ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    .line 156
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->dialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 157
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->show()V

    .line 159
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->ad:Lcom/my/target/core/facades/c;

    instance-of v0, v0, Lcom/my/target/core/facades/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 163
    iget-object v1, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v1}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/my/target/ads/InterstitialSliderAd;->adDialog:Lcom/my/target/core/ui/a;

    invoke-virtual {v0}, Lcom/my/target/core/ui/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method
