.class public Lcom/my/target/ads/MyTargetActivity;
.super Landroid/app/Activity;
.source "MyTargetActivity.java"

# interfaces
.implements Lcom/my/target/core/engines/b$a;
.implements Lcom/my/target/core/ui/views/chrome/CustomWebView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/ads/MyTargetActivity$CloseReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.my.target.ACTION_CLOSE_ACTIVITY"

.field public static final WEB_VIEW_URL:Ljava/lang/String; = "com.my.target.extras.web_vew_url"

.field public static ad:Lcom/my/target/core/facades/g;


# instance fields
.field private closeReceiver:Lcom/my/target/ads/MyTargetActivity$CloseReceiver;

.field private customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

.field private engine:Lcom/my/target/core/engines/b;

.field private rootLayout:Landroid/widget/LinearLayout;

.field private shouldWeFinish:Z

.field private uiUtils:Lcom/my/target/core/utils/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isBackAllowed()Z
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x1

    .line 295
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    instance-of v1, v1, Lcom/my/target/core/engines/e;

    if-eqz v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    check-cast v0, Lcom/my/target/core/engines/e;

    invoke-virtual {v0}, Lcom/my/target/core/engines/e;->h()Z

    move-result v0

    .line 299
    :cond_0
    return v0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 81
    const-string v0, "com.my.target.actions.webview"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "com.my.target.extras.web_vew_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/my/target/ads/MyTargetActivity;->setupStatusBarForWebView()V

    .line 87
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/my/target/ads/MyTargetActivity;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->showWebPage(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v0, Lcom/my/target/ads/MyTargetActivity;->ad:Lcom/my/target/core/facades/g;

    .line 93
    const/4 v1, 0x0

    sput-object v1, Lcom/my/target/ads/MyTargetActivity;->ad:Lcom/my/target/core/facades/g;

    .line 95
    if-nez v0, :cond_2

    .line 97
    const-string v0, "MyTargetActivity has not enough data for displaying"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p0}, Lcom/my/target/core/factories/c;->a(Lcom/my/target/core/facades/g;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/my/target/core/engines/b;

    move-result-object v1

    iput-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    .line 104
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "com.my.target.actions.appwall"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    check-cast v0, Lcom/my/target/nativeads/NativeAppwallAd;

    .line 109
    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setupActionBarForAppwall(Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 115
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0, p0}, Lcom/my/target/core/engines/b;->a(Lcom/my/target/core/engines/b$a;)V

    .line 116
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "com.my.target.actions.interstitial"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    invoke-direct {p0}, Lcom/my/target/ads/MyTargetActivity;->setupStatusbarForFullscreen()V

    goto :goto_1
.end method

.method private setActionbarTextColor(Landroid/app/ActionBar;I)V
    .locals 5

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 210
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupActionBarForAppwall(Lcom/my/target/nativeads/NativeAppwallAd;)V
    .locals 5

    .prologue
    const v4, 0x106000d

    const/4 v3, 0x1

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 148
    const v0, 0x1030238

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setTheme(I)V

    .line 149
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 154
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 155
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleBackgroundColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleTextColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/my/target/ads/MyTargetActivity;->setActionbarTextColor(Landroid/app/ActionBar;I)V

    .line 159
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->uiUtils:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleSupplementaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 164
    const v0, 0x1030119

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setTheme(I)V

    .line 165
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleBackgroundColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleTextColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/my/target/ads/MyTargetActivity;->setActionbarTextColor(Landroid/app/ActionBar;I)V

    .line 172
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 174
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 175
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 180
    const v0, 0x1030006

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setTheme(I)V

    .line 181
    new-instance v0, Lcom/my/target/core/ui/views/AdTitle;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/AdTitle;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdTitle;->setLabel(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/AdTitle;->setCloseClickListener(Lcom/my/target/core/engines/b$a;)V

    .line 185
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/my/target/ads/MyTargetActivity;->uiUtils:Lcom/my/target/core/utils/l;

    const/16 v4, 0x34

    .line 186
    invoke-virtual {v3, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdTitle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleSupplementaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdTitle;->setStripeColor(I)V

    .line 189
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdTitle;->setMainColor(I)V

    .line 190
    invoke-virtual {p1}, Lcom/my/target/nativeads/NativeAppwallAd;->getTitleTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdTitle;->setTitleColor(I)V

    .line 191
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setupStatusBarForWebView()V
    .locals 2

    .prologue
    .line 122
    const v0, 0x103000d

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setTheme(I)V

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 126
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 127
    const v1, -0xbaa59c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 129
    :cond_0
    return-void
.end method

.method private setupStatusbarForFullscreen()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 197
    const v0, 0x1030006

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->setTheme(I)V

    .line 198
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 200
    return-void
.end method

.method private showWebPage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    .line 136
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->a()V

    .line 139
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->setUrl(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0, p0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->setListener(Lcom/my/target/core/ui/views/chrome/CustomWebView$a;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->c()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/my/target/ads/MyTargetActivity;->isBackAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/my/target/ads/MyTargetActivity;->shouldWeFinish:Z

    .line 318
    return-void
.end method

.method public onCloseClick()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    .line 324
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->rootLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p0}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->uiUtils:Lcom/my/target/core/utils/l;

    .line 69
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->processIntent(Landroid/content/Intent;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 263
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->e()V

    .line 266
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->f()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    if-eqz v0, :cond_2

    .line 270
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->setVisibility(I)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->customWebView:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->d()V

    .line 275
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 311
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 308
    :pswitch_0
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    .line 309
    const/4 v0, 0x1

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->closeReceiver:Lcom/my/target/ads/MyTargetActivity$CloseReceiver;

    invoke-virtual {p0, v0}, Lcom/my/target/ads/MyTargetActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->a()V

    .line 246
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.my.target.ACTION_CLOSE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/my/target/ads/MyTargetActivity$CloseReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/my/target/ads/MyTargetActivity$CloseReceiver;-><init>(Lcom/my/target/ads/MyTargetActivity;Lcom/my/target/ads/MyTargetActivity$1;)V

    iput-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->closeReceiver:Lcom/my/target/ads/MyTargetActivity$CloseReceiver;

    .line 230
    iget-object v1, p0, Lcom/my/target/ads/MyTargetActivity;->closeReceiver:Lcom/my/target/ads/MyTargetActivity$CloseReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/ads/MyTargetActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->b()V

    .line 235
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 218
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->d()V

    .line 222
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 252
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity;->engine:Lcom/my/target/core/engines/b;

    invoke-interface {v0}, Lcom/my/target/core/engines/b;->c()V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/my/target/ads/MyTargetActivity;->shouldWeFinish:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    .line 257
    :cond_1
    return-void
.end method

.method public onWebViewClosed()V
    .locals 0

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    .line 330
    return-void
.end method
