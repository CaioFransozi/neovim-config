            vim.opt.termguicolors = true
			            vim.wo.relativenumber = true
				                vim.wo.number = true
						
						            vim.o.cursorline = true
							                vim.opt.clipboard = "unnamedplus"
									        
									            vim.api.nvim_create_autocmd('TextYankPost', {
											                     group = vim.api.nvim_create_augroup('highlight_yank', {}),
													                      desc = 'Hightlight selection on yank',
															                       pattern = '*',
																	                        callback = function()
																					                      vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
																							                       end,
																									                   })

																											               vim.diagnostic.config({
																													                        virtual_text =  { 
																																	                         source = true,
																																				                          hl_mode = 'replace'
																																							                   },
																																									                    signs = { 
																																												                             text = { [vim.diagnostic.severity.ERROR] = '', [vim.diagnostic.severity.WARN] = '', [vim.diagnostic.severity.INFO] = '', [vim.diagnostic.severity.HINT] = '' } 
																																															                      },
																																																	                  })
																																																			  require("config.lazy")
