.class public Lcom/perm/kate/StatsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "StatsActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# instance fields
.field private age_chart_view:Lcom/perm/kate/chartview/ChartView;

.field private btn_date_from:Landroid/widget/Button;

.field private btn_date_to:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private color_chart_line1:I

.field private color_chart_line2:I

.field private color_chart_line3:I

.field private color_chart_line4:I

.field private color_chart_line5:I

.field private color_chart_line6:I

.field private color_chart_line7:I

.field private color_chart_line8:I

.field private date_from:Ljava/util/Date;

.field private date_from_OnClickListener:Landroid/view/View$OnClickListener;

.field private date_to:Ljava/util/Date;

.field private date_to_OnClickListener:Landroid/view/View$OnClickListener;

.field private display_df:Ljava/text/SimpleDateFormat;

.field private fl_button_bg:Landroid/widget/FrameLayout;

.field private fl_button_bg2:Landroid/widget/FrameLayout;

.field private group_id:Ljava/lang/Long;

.field private label_df:Ljava/text/SimpleDateFormat;

.field private lineWidth:I

.field private ll_age:Landroid/widget/LinearLayout;

.field private ll_sex:Landroid/widget/LinearLayout;

.field private ll_visitors_views:Landroid/widget/LinearLayout;

.field private pointRadius:I

.field private sex_chart_view:Lcom/perm/kate/chartview/ChartView;

.field private tv_info:Landroid/widget/TextView;

.field private tv_loading_data:Landroid/widget/TextView;

.field private visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->group_id:Ljava/lang/Long;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->display_df:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->label_df:Ljava/text/SimpleDateFormat;

    .line 87
    new-instance v0, Lcom/perm/kate/StatsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatsActivity$1;-><init>(Lcom/perm/kate/StatsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->date_from_OnClickListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/perm/kate/StatsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatsActivity$2;-><init>(Lcom/perm/kate/StatsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->date_to_OnClickListener:Landroid/view/View$OnClickListener;

    .line 189
    new-instance v0, Lcom/perm/kate/StatsActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/StatsActivity$4;-><init>(Lcom/perm/kate/StatsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/StatsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/StatsActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->updateButtonsLabels()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/StatsActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/StatsActivity;)Ljava/util/Date;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/StatsActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refresh()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/StatsActivity;->diplayDataInUiThread(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/perm/kate/StatsActivity;->diplayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private diplayData(Ljava/util/ArrayList;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_35

    .line 229
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1d

    :cond_0
    const/4 v3, 0x1

    .line 237
    invoke-direct {v1, v3}, Lcom/perm/kate/StatsActivity;->showHideFields(Z)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/StatsActivity;->updateButtonsLabels()V

    .line 240
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 244
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x40

    if-ge v4, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 249
    :goto_0
    new-instance v6, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v6}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 250
    iget v7, v1, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 251
    iget v7, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 252
    iget v7, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 254
    new-instance v7, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v7}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 255
    iget v8, v1, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    invoke-virtual {v7, v8}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 256
    iget v8, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 257
    iget v8, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v8, v8

    invoke-virtual {v7, v5, v8}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v8, 0x9

    const-wide v9, 0x4006666666666666L    # 2.8

    if-gt v4, v8, :cond_2

    move v8, v4

    goto :goto_2

    :cond_2
    const/16 v8, 0x1f

    if-ge v4, v8, :cond_3

    int-to-double v11, v4

    .line 264
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v9

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    :goto_1
    double-to-int v8, v11

    goto :goto_2

    :cond_3
    int-to-double v11, v4

    .line 266
    div-int/lit8 v8, v4, 0xa
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-double v13, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    goto :goto_1

    :goto_2
    add-int/lit8 v8, v8, -0x2

    .line 272
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v4, :cond_4

    .line 274
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/PeriodStats;

    .line 275
    iget-wide v13, v13, Lcom/perm/kate/api/PeriodStats;->day:J

    invoke-direct {v1, v13, v14}, Lcom/perm/kate/StatsActivity;->parseDate(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 280
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lcom/perm/kate/api/PeriodStats;

    .line 281
    new-instance v2, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget v9, v15, Lcom/perm/kate/api/PeriodStats;->views:I

    int-to-double v9, v9

    invoke-direct {v2, v12, v13, v9, v10}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v6, v2}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 282
    new-instance v2, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget v9, v15, Lcom/perm/kate/api/PeriodStats;->visitors:I

    int-to-double v9, v9

    invoke-direct {v2, v12, v13, v9, v10}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v7, v2}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 284
    iget v2, v15, Lcom/perm/kate/api/PeriodStats;->views:I

    if-le v2, v14, :cond_5

    move v14, v2

    .line 286
    :cond_5
    iget v2, v15, Lcom/perm/kate/api/PeriodStats;->visitors:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-le v2, v14, :cond_6

    move v14, v2

    :cond_6
    add-double v12, v12, v18

    const-wide v9, 0x4006666666666666L    # 2.8

    goto :goto_4

    :cond_7
    const/16 v2, 0xe

    const/4 v4, 0x7

    const/4 v9, 0x2

    if-ge v14, v9, :cond_8

    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    if-ge v14, v4, :cond_9

    sub-int/2addr v14, v3

    goto :goto_5

    :cond_9
    if-ge v14, v2, :cond_a

    int-to-double v12, v14

    .line 299
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v14, 0x4006666666666666L    # 2.8

    div-double/2addr v12, v14

    :try_start_3
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v14, v12

    goto :goto_5

    :cond_a
    const/4 v14, 0x5

    .line 301
    :goto_5
    iget-object v12, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v12}, Lcom/perm/kate/chartview/ChartView;->clearSeries()V

    .line 302
    iget-object v12, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v12, v14}, Lcom/perm/kate/chartview/ChartView;->setGridLinesVertical(I)V

    .line 303
    iget-object v12, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v12, v8}, Lcom/perm/kate/chartview/ChartView;->setGridLinesHorizontal(I)V

    .line 306
    iget-object v12, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v12, v6}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 307
    iget-object v6, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 308
    iget-object v6, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    new-instance v7, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v12, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-direct {v7, v1, v12}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/ChartView;->setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V

    .line 309
    iget-object v6, v1, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    new-instance v7, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v12, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-direct {v7, v1, v12, v3}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V

    invoke-virtual {v6, v7, v11}, Lcom/perm/kate/chartview/ChartView;->setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V

    .line 312
    new-instance v6, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v6}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 313
    iget v7, v1, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 314
    iget v7, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 315
    iget v7, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 316
    new-instance v7, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v7}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 317
    iget v12, v1, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    invoke-virtual {v7, v12}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 318
    iget v12, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v12, v12

    invoke-virtual {v7, v12}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 319
    iget v12, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v12, v12

    invoke-virtual {v7, v5, v12}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/4 v10, -0x1

    if-eqz v16, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/perm/kate/api/PeriodStats;

    .line 329
    iget-object v3, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/16 v16, -0x1

    const/16 v22, -0x1

    .line 330
    :goto_7
    iget-object v4, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 331
    iget-object v4, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/StatsValue;

    iget-object v4, v4, Lcom/perm/kate/api/StatsValue;->value:Ljava/lang/String;

    const-string v9, "m"

    .line 332
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move/from16 v16, v3

    goto :goto_8

    :cond_b
    const-string v9, "f"

    .line 334
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v22, v3

    :cond_c
    :goto_8
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    goto :goto_7

    :cond_d
    move/from16 v3, v16

    move/from16 v4, v22

    goto :goto_9

    :cond_e
    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_9
    if-le v3, v10, :cond_10

    .line 339
    new-instance v9, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v10, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/StatsValue;

    iget v10, v10, Lcom/perm/kate/api/StatsValue;->visitors:I

    move-object/from16 v23, v11

    int-to-double v10, v10

    invoke-direct {v9, v13, v14, v10, v11}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v6, v9}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 340
    iget-object v9, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/api/StatsValue;

    iget v9, v9, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v9, v15, :cond_f

    .line 341
    iget-object v9, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/StatsValue;

    iget v15, v3, Lcom/perm/kate/api/StatsValue;->visitors:I

    :cond_f
    move v9, v15

    goto :goto_a

    :cond_10
    move-object/from16 v23, v11

    .line 343
    new-instance v3, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v9, 0x0

    invoke-direct {v3, v13, v14, v9, v10}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move v9, v15

    invoke-virtual {v6, v3}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :goto_a
    const/4 v3, -0x1

    if-le v4, v3, :cond_11

    .line 345
    new-instance v3, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v10, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/StatsValue;

    iget v10, v10, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v10, v10

    invoke-direct {v3, v13, v14, v10, v11}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v7, v3}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 346
    iget-object v3, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/StatsValue;

    iget v3, v3, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v3, v9, :cond_12

    .line 347
    iget-object v2, v2, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/StatsValue;

    iget v2, v2, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_b

    .line 349
    :cond_11
    new-instance v2, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v13, v14, v3, v4}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v7, v2}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_12
    move v2, v9

    :goto_b
    add-double v13, v13, v18

    move v15, v2

    move-object/from16 v11, v23

    const/16 v2, 0xe

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v9, 0x2

    goto/16 :goto_6

    :cond_13
    move-object/from16 v23, v11

    move v9, v15

    const/4 v2, 0x2

    if-ge v9, v2, :cond_14

    const/4 v3, 0x0

    goto :goto_c

    :cond_14
    const/4 v2, 0x7

    if-ge v9, v2, :cond_15

    const/4 v2, 0x1

    add-int/lit8 v3, v9, -0x1

    goto :goto_c

    :cond_15
    const/16 v2, 0xe

    if-ge v9, v2, :cond_16

    int-to-double v2, v9

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v9, 0x4006666666666666L    # 2.8

    div-double/2addr v2, v9

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    goto :goto_c

    :cond_16
    const/4 v3, 0x5

    .line 361
    :goto_c
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v2}, Lcom/perm/kate/chartview/ChartView;->clearSeries()V

    .line 362
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v2, v3}, Lcom/perm/kate/chartview/ChartView;->setGridLinesVertical(I)V

    .line 363
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v2, v8}, Lcom/perm/kate/chartview/ChartView;->setGridLinesHorizontal(I)V

    .line 365
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v2, v6}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 366
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v2, v7}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 367
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    new-instance v3, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v4, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-direct {v3, v1, v4}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/chartview/ChartView;->setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V

    .line 368
    iget-object v2, v1, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    new-instance v3, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v4, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const/4 v6, 0x1

    invoke-direct {v3, v1, v4, v6}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V

    move-object/from16 v4, v23

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/chartview/ChartView;->setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V

    .line 372
    new-instance v2, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v2}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 373
    iget v3, v1, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    invoke-virtual {v2, v3}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 374
    iget v3, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 375
    iget v3, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 377
    new-instance v3, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v3}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 378
    iget v6, v1, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    invoke-virtual {v3, v6}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 379
    iget v6, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 380
    iget v6, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 382
    new-instance v6, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v6}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 383
    iget v7, v1, Lcom/perm/kate/StatsActivity;->color_chart_line3:I

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 384
    iget v7, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 385
    iget v7, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 387
    new-instance v7, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v7}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 388
    iget v9, v1, Lcom/perm/kate/StatsActivity;->color_chart_line4:I

    invoke-virtual {v7, v9}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 389
    iget v9, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 390
    iget v9, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v9, v9

    invoke-virtual {v7, v5, v9}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 392
    new-instance v9, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v9}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 393
    iget v10, v1, Lcom/perm/kate/StatsActivity;->color_chart_line5:I

    invoke-virtual {v9, v10}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 394
    iget v10, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 395
    iget v10, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v10, v10

    invoke-virtual {v9, v5, v10}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 397
    new-instance v10, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v10}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 398
    iget v11, v1, Lcom/perm/kate/StatsActivity;->color_chart_line6:I

    invoke-virtual {v10, v11}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 399
    iget v11, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 400
    iget v11, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v11, v11

    invoke-virtual {v10, v5, v11}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 402
    new-instance v11, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v11}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 403
    iget v12, v1, Lcom/perm/kate/StatsActivity;->color_chart_line7:I

    invoke-virtual {v11, v12}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 404
    iget v12, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 405
    iget v12, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v12, v12

    invoke-virtual {v11, v5, v12}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 407
    new-instance v12, Lcom/perm/kate/chartview/LinearSeries;

    invoke-direct {v12}, Lcom/perm/kate/chartview/LinearSeries;-><init>()V

    .line 408
    iget v13, v1, Lcom/perm/kate/StatsActivity;->color_chart_line8:I

    invoke-virtual {v12, v13}, Lcom/perm/kate/chartview/AbstractSeries;->setLineColor(I)V

    .line 409
    iget v13, v1, Lcom/perm/kate/StatsActivity;->lineWidth:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lcom/perm/kate/chartview/AbstractSeries;->setLineWidth(F)V

    .line 410
    iget v13, v1, Lcom/perm/kate/StatsActivity;->pointRadius:I

    int-to-float v13, v13

    invoke-virtual {v12, v5, v13}, Lcom/perm/kate/chartview/AbstractSeries;->setDrawPoint(ZF)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const-wide/16 v13, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v20, :cond_31

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v15, v20

    check-cast v15, Lcom/perm/kate/api/PeriodStats;

    move-object/from16 p1, v0

    .line 424
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v29, v4

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    const/16 v16, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    .line 425
    :goto_e
    :try_start_6
    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1f

    .line 426
    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/StatsValue;

    iget-object v4, v4, Lcom/perm/kate/api/StatsValue;->value:Ljava/lang/String;

    move/from16 v30, v8

    const-string v8, "12-18"

    .line 427
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    move/from16 v28, v0

    goto :goto_f

    :cond_17
    const-string v8, "18-21"

    .line 429
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    move/from16 v16, v0

    goto :goto_f

    :cond_18
    const-string v8, "21-24"

    .line 431
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    move/from16 v20, v0

    goto :goto_f

    :cond_19
    const-string v8, "24-27"

    .line 433
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move/from16 v21, v0

    goto :goto_f

    :cond_1a
    const-string v8, "27-30"

    .line 435
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move/from16 v24, v0

    goto :goto_f

    :cond_1b
    const-string v8, "30-35"

    .line 437
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move/from16 v25, v0

    goto :goto_f

    :cond_1c
    const-string v8, "35-45"

    .line 439
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    move/from16 v26, v0

    goto :goto_f

    :cond_1d
    const-string v8, "45-100"

    .line 441
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_1e

    move/from16 v27, v0

    :cond_1e
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v30

    goto :goto_e

    :cond_1f
    move/from16 v30, v8

    move/from16 v1, v16

    move/from16 v4, v21

    move/from16 v0, v25

    move/from16 v8, v28

    move-object/from16 v25, v10

    move-object/from16 v21, v11

    move-object/from16 v16, v12

    move/from16 v12, v20

    move/from16 v11, v24

    move/from16 v24, v26

    move/from16 v20, v27

    const/4 v10, -0x1

    goto :goto_10

    :cond_20
    move/from16 v30, v8

    move-object/from16 v25, v10

    move-object/from16 v21, v11

    move-object/from16 v16, v12

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v20, -0x1

    const/16 v24, -0x1

    :goto_10
    if-le v8, v10, :cond_21

    .line 446
    :try_start_7
    new-instance v10, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    move/from16 v26, v0

    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    int-to-double v6, v0

    invoke-direct {v10, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v2, v10}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 447
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v0, v5, :cond_22

    .line 448
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_11

    :cond_21
    move/from16 v26, v0

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    .line 450
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v2, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_22
    :goto_11
    const/4 v0, -0x1

    if-le v1, v0, :cond_23

    .line 452
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v8, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/StatsValue;

    iget v8, v8, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v6, v8

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v3, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 453
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v0, v5, :cond_24

    .line 454
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_12

    .line 456
    :cond_23
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v3, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_24
    :goto_12
    const/4 v0, -0x1

    if-le v12, v0, :cond_25

    .line 458
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v1, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/StatsValue;

    iget v1, v1, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v6, v1

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 459
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v0, v5, :cond_26

    .line 460
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_13

    :cond_25
    move-object/from16 v1, v27

    .line 462
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v1, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_26
    :goto_13
    const/4 v0, -0x1

    if-le v4, v0, :cond_27

    .line 464
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v8, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/StatsValue;

    iget v8, v8, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v6, v8

    invoke-direct {v0, v13, v14, v6, v7}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v6, v28

    invoke-virtual {v6, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 465
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v0, v5, :cond_28

    .line 466
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_14

    :cond_27
    move-object/from16 v6, v28

    .line 468
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v6, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_28
    :goto_14
    const/4 v0, -0x1

    if-le v11, v0, :cond_29

    .line 470
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/StatsValue;

    iget v4, v4, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v7, v4

    invoke-direct {v0, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v9, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 471
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v0, v5, :cond_2a

    .line 472
    iget-object v0, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_15

    .line 474
    :cond_29
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v9, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_2a
    :goto_15
    move/from16 v0, v26

    const/4 v4, -0x1

    if-le v0, v4, :cond_2b

    .line 476
    new-instance v4, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v10, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/StatsValue;

    iget v10, v10, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v10, v10

    invoke-direct {v4, v13, v14, v10, v11}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v10, v25

    invoke-virtual {v10, v4}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 477
    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/StatsValue;

    iget v4, v4, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v4, v5, :cond_2c

    .line 478
    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_16

    :cond_2b
    move-object/from16 v10, v25

    .line 480
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v10, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_2c
    :goto_16
    move/from16 v0, v24

    const/4 v4, -0x1

    if-le v0, v4, :cond_2d

    .line 482
    new-instance v4, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v11, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/api/StatsValue;

    iget v11, v11, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v11, v11

    invoke-direct {v4, v13, v14, v11, v12}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v11, v21

    invoke-virtual {v11, v4}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 483
    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/StatsValue;

    iget v4, v4, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v4, v5, :cond_2e

    .line 484
    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v5, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    goto :goto_17

    :cond_2d
    move-object/from16 v11, v21

    .line 486
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v11, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    :cond_2e
    :goto_17
    move/from16 v0, v20

    const/4 v4, -0x1

    if-le v0, v4, :cond_30

    .line 488
    new-instance v12, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    iget-object v4, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/StatsValue;

    iget v4, v4, Lcom/perm/kate/api/StatsValue;->visitors:I

    int-to-double v7, v4

    invoke-direct {v12, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    move-object/from16 v4, v16

    invoke-virtual {v4, v12}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V

    .line 489
    iget-object v7, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/StatsValue;

    iget v7, v7, Lcom/perm/kate/api/StatsValue;->visitors:I

    if-le v7, v5, :cond_2f

    .line 490
    iget-object v5, v15, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/StatsValue;

    iget v0, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    move v5, v0

    :cond_2f
    const-wide/16 v7, 0x0

    goto :goto_18

    :cond_30
    move-object/from16 v4, v16

    .line 492
    new-instance v0, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v13, v14, v7, v8}, Lcom/perm/kate/chartview/LinearSeries$LinearPoint;-><init>(DD)V

    invoke-virtual {v4, v0}, Lcom/perm/kate/chartview/AbstractSeries;->addPoint(Lcom/perm/kate/chartview/AbstractSeries$AbstractPoint;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_18
    add-double v13, v13, v18

    move-object/from16 v0, p1

    move-object v12, v4

    move-object v7, v6

    move-object/from16 v4, v29

    move/from16 v8, v30

    move-object v6, v1

    move-object/from16 v1, p0

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_1b

    :cond_31
    move-object/from16 v29, v4

    move-object v1, v6

    move-object v6, v7

    move/from16 v30, v8

    move-object v4, v12

    const/4 v0, 0x2

    if-ge v5, v0, :cond_32

    const/4 v0, 0x0

    :goto_19
    move-object/from16 v5, p0

    goto :goto_1a

    :cond_32
    const/4 v0, 0x7

    if-ge v5, v0, :cond_33

    const/4 v0, 0x1

    sub-int/2addr v5, v0

    move v0, v5

    goto :goto_19

    :cond_33
    const/16 v0, 0xe

    if-ge v5, v0, :cond_34

    int-to-double v7, v5

    .line 504
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v12, 0x4006666666666666L    # 2.8

    div-double/2addr v7, v12

    :try_start_8
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    double-to-int v0, v7

    goto :goto_19

    :cond_34
    const/4 v0, 0x5

    goto :goto_19

    .line 506
    :goto_1a
    :try_start_9
    iget-object v7, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v7}, Lcom/perm/kate/chartview/ChartView;->clearSeries()V

    .line 507
    iget-object v7, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v7, v0}, Lcom/perm/kate/chartview/ChartView;->setGridLinesVertical(I)V

    .line 508
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    move/from16 v8, v30

    invoke-virtual {v0, v8}, Lcom/perm/kate/chartview/ChartView;->setGridLinesHorizontal(I)V

    .line 510
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v2}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 511
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v3}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 512
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 513
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v6}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 514
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v9}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 515
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v10}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 516
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v11}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 517
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    invoke-virtual {v0, v4}, Lcom/perm/kate/chartview/ChartView;->addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V

    .line 518
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    new-instance v1, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v2, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    invoke-direct {v1, v5, v2}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/chartview/ChartView;->setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V

    .line 519
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    new-instance v1, Lcom/perm/kate/ValueLabelAdapter;

    sget-object v2, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    const/4 v3, 0x1

    invoke-direct {v1, v5, v2, v3}, Lcom/perm/kate/ValueLabelAdapter;-><init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/chartview/ChartView;->setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1c

    :catchall_1
    move-exception v0

    goto :goto_1b

    :catchall_2
    move-exception v0

    move-object v5, v1

    .line 522
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 523
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1c
    return-void

    :cond_35
    :goto_1d
    move-object v5, v1

    .line 230
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->tv_loading_data:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 232
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->fl_button_bg2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, v5, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    const v1, 0x7f0f0250

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private diplayDataInUiThread(Ljava/util/ArrayList;)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/perm/kate/StatsActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/StatsActivity$5;-><init>(Lcom/perm/kate/StatsActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initDates()V
    .locals 7

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 157
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 158
    new-instance v5, Ljava/util/Date;

    add-int/lit16 v6, v1, -0x76c

    invoke-direct {v5, v6, v3, v4}, Ljava/util/Date;-><init>(III)V

    iput-object v5, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    const/4 v5, -0x1

    .line 159
    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->add(II)V

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 163
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 164
    new-instance v2, Ljava/util/Date;

    add-int/lit16 v1, v1, -0x76c

    invoke-direct {v2, v1, v0, v4}, Ljava/util/Date;-><init>(III)V

    iput-object v2, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    return-void
.end method

.method private initFields()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 140
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->lineWidth:I

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 141
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->pointRadius:I

    .line 142
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line1:I

    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line2:I

    .line 144
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line3:I

    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line4:I

    .line 146
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line5:I

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line6:I

    .line 148
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line7:I

    .line 149
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/StatsActivity;->color_chart_line8:I

    return-void
.end method

.method private onOrientationChanged()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {v0}, Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V

    :cond_2
    return-void
.end method

.method private parseDate(J)Ljava/lang/String;
    .locals 3

    .line 529
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 530
    iget-object p1, p0, Lcom/perm/kate/StatsActivity;->label_df:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private refresh()V
    .locals 9

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 186
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/StatsActivity;->group_id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/StatsActivity;->callback:Lcom/perm/kate/session/Callback;

    const/4 v3, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getStats(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/perm/kate/StatsActivity;->showHideFields(Z)V

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 176
    new-instance v0, Lcom/perm/kate/StatsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatsActivity$3;-><init>(Lcom/perm/kate/StatsActivity;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showHideFields(Z)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->tv_loading_data:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_visitors_views:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_sex:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->ll_age:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateButtonsLabels()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_from:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f0208

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->display_df:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/perm/kate/StatsActivity;->date_from:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->btn_date_to:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f02e3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/StatsActivity;->display_df:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/perm/kate/StatsActivity;->date_to:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 536
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->onOrientationChanged()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->onOrientationChanged()V

    .line 541
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c011a

    .line 63
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04f1

    .line 64
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 65
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 66
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->group_id:Ljava/lang/Long;

    const p1, 0x7f090138

    .line 68
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg:Landroid/widget/FrameLayout;

    const p1, 0x7f090139

    .line 69
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->fl_button_bg2:Landroid/widget/FrameLayout;

    const p1, 0x7f090074

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->btn_date_from:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->date_from_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090075

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->btn_date_to:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/perm/kate/StatsActivity;->date_to_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090387

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->tv_loading_data:Landroid/widget/TextView;

    const p1, 0x7f090377

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->tv_info:Landroid/widget/TextView;

    const p1, 0x7f0901fd

    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->ll_visitors_views:Landroid/widget/LinearLayout;

    const p1, 0x7f0901f7

    .line 77
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->ll_sex:Landroid/widget/LinearLayout;

    const p1, 0x7f0901c5

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->ll_age:Landroid/widget/LinearLayout;

    const p1, 0x7f090414

    .line 79
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/chartview/ChartView;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->visitors_views_chart_view:Lcom/perm/kate/chartview/ChartView;

    const p1, 0x7f0902c7

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/chartview/ChartView;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->sex_chart_view:Lcom/perm/kate/chartview/ChartView;

    const p1, 0x7f090039

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/chartview/ChartView;

    iput-object p1, p0, Lcom/perm/kate/StatsActivity;->age_chart_view:Lcom/perm/kate/chartview/ChartView;

    .line 82
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->initFields()V

    .line 83
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->initDates()V

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refreshInThread()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/perm/kate/StatsActivity;->refreshInThread()V

    return-void
.end method
